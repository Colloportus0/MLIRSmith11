module attributes {llvm.data_layout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128", llvm.target_triple = "x86_64-unknown-linux-gnu"} {
  llvm.func @strncmp(!llvm.ptr<i8>, !llvm.ptr<i8>, i64) -> i32
  llvm.mlir.global external constant @_entry_point_0("run_main_graph\00") {addr_space = 0 : i32}
  llvm.mlir.global external constant @_entry_point_0_in_sig("[    { \22type\22 : \22i32\22 , \22dims\22 : [1 , 1 , 2 , 2] , \22name\22 : \22v5_0\22 }\0A\0A]\00") {addr_space = 0 : i32}
  llvm.mlir.global external constant @_entry_point_0_out_sig("[   { \22type\22 : \22i32\22 , \22dims\22 : [1 , 1 , 2 , 2] , \22name\22 : \22v1_0\22 }\0A ,    { \22type\22 : \22i1\22 , \22dims\22 : [1 , 1 , 2 , 2] , \22name\22 : \22v4_0\22 }\0A\0A]\00") {addr_space = 0 : i32}
  llvm.func @omTensorListGetSize(!llvm.ptr<i8>) -> i64
  llvm.func @omTensorPrint(!llvm.ptr<i8>, !llvm.ptr<i8>)
  llvm.func @omTensorListGetOmtArray(!llvm.ptr<i8>) -> !llvm.ptr<ptr<i8>>
  llvm.func @omTensorSetDataType(!llvm.ptr<i8>, i64)
  llvm.func @omTensorGetDataType(!llvm.ptr<i8>) -> i64
  llvm.func @omTensorGetStrides(!llvm.ptr<i8>) -> !llvm.ptr<i64>
  llvm.func @omTensorGetShape(!llvm.ptr<i8>) -> !llvm.ptr<i64>
  llvm.func @omTensorGetRank(!llvm.ptr<i8>) -> i64
  llvm.func @omTensorSetDataPtr(!llvm.ptr<i8>, i64, !llvm.ptr<i8>, !llvm.ptr<i8>)
  llvm.func @omTensorGetDataPtr(!llvm.ptr<i8>) -> !llvm.ptr<i8>
  llvm.func @omTensorCreateUntyped(i64) -> !llvm.ptr<i8>
  llvm.func @omTensorListCreate(!llvm.ptr<ptr<i8>>, i64, i64) -> !llvm.ptr<i8>
  llvm.func @malloc(i64) -> !llvm.ptr<i8>
  llvm.mlir.global internal constant @constant_0(dense<[[6, 6], [5, 4]]> : tensor<2x2xi32>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<2 x array<2 x i32>>
  llvm.func @main_graph(%arg0: !llvm.ptr<i32>, %arg1: !llvm.ptr<i32>, %arg2: i64, %arg3: i64, %arg4: i64, %arg5: i64, %arg6: i64, %arg7: i64, %arg8: i64, %arg9: i64, %arg10: i64) -> !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>)> attributes {input_names = ["v5_0"], llvm.emit_c_interface, output_names = ["v1_0", "v4_0"]} {
    %0 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %1 = llvm.insertvalue %arg0, %0[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %2 = llvm.insertvalue %arg1, %1[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %3 = llvm.insertvalue %arg2, %2[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %4 = llvm.insertvalue %arg3, %3[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %5 = llvm.insertvalue %arg7, %4[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %6 = llvm.insertvalue %arg4, %5[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %7 = llvm.insertvalue %arg8, %6[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %8 = llvm.insertvalue %arg5, %7[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %9 = llvm.insertvalue %arg9, %8[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %10 = llvm.insertvalue %arg6, %9[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %11 = llvm.insertvalue %arg10, %10[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %12 = llvm.mlir.constant(0 : i32) : i32
    %13 = llvm.mlir.addressof @constant_0 : !llvm.ptr<array<2 x array<2 x i32>>>
    %14 = llvm.bitcast %13 : !llvm.ptr<array<2 x array<2 x i32>>> to !llvm.ptr<i32>
    %15 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)>
    %16 = llvm.insertvalue %14, %15[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %17 = llvm.insertvalue %14, %16[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %18 = llvm.mlir.constant(0 : index) : i64
    %19 = llvm.insertvalue %18, %17[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %20 = llvm.mlir.constant(2 : index) : i64
    %21 = llvm.insertvalue %20, %19[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %22 = llvm.mlir.constant(2 : index) : i64
    %23 = llvm.insertvalue %22, %21[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %24 = llvm.mlir.constant(2 : index) : i64
    %25 = llvm.insertvalue %24, %23[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %26 = llvm.mlir.constant(1 : index) : i64
    %27 = llvm.insertvalue %26, %25[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %28 = llvm.mlir.constant(1 : index) : i64
    %29 = llvm.mlir.constant(1 : index) : i64
    %30 = llvm.mlir.constant(2 : index) : i64
    %31 = llvm.mlir.constant(2 : index) : i64
    %32 = llvm.mlir.constant(1 : index) : i64
    %33 = llvm.mlir.constant(4 : index) : i64
    %34 = llvm.mlir.constant(4 : index) : i64
    %35 = llvm.mlir.constant(4 : index) : i64
    %36 = llvm.mlir.null : !llvm.ptr<i32>
    %37 = llvm.getelementptr %36[%35] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %38 = llvm.ptrtoint %37 : !llvm.ptr<i32> to i64
    %39 = llvm.mlir.constant(16 : index) : i64
    %40 = llvm.add %38, %39  : i64
    %41 = llvm.call @malloc(%40) : (i64) -> !llvm.ptr<i8>
    %42 = llvm.bitcast %41 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %43 = llvm.ptrtoint %42 : !llvm.ptr<i32> to i64
    %44 = llvm.mlir.constant(1 : index) : i64
    %45 = llvm.sub %39, %44  : i64
    %46 = llvm.add %43, %45  : i64
    %47 = llvm.urem %46, %39  : i64
    %48 = llvm.sub %46, %47  : i64
    %49 = llvm.inttoptr %48 : i64 to !llvm.ptr<i32>
    %50 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %51 = llvm.insertvalue %42, %50[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %52 = llvm.insertvalue %49, %51[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %53 = llvm.mlir.constant(0 : index) : i64
    %54 = llvm.insertvalue %53, %52[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %55 = llvm.insertvalue %28, %54[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %56 = llvm.insertvalue %29, %55[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %57 = llvm.insertvalue %30, %56[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %58 = llvm.insertvalue %31, %57[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %59 = llvm.insertvalue %34, %58[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %60 = llvm.insertvalue %33, %59[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %61 = llvm.insertvalue %31, %60[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %62 = llvm.insertvalue %32, %61[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %63 = llvm.mlir.constant(0 : index) : i64
    %64 = llvm.mlir.constant(1 : index) : i64
    %65 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb1(%63 : i64)
  ^bb1(%66: i64):  // 2 preds: ^bb0, ^bb11
    %67 = llvm.icmp "slt" %66, %64 : i64
    llvm.cond_br %67, ^bb2, ^bb12
  ^bb2:  // pred: ^bb1
    %68 = llvm.mlir.constant(0 : index) : i64
    %69 = llvm.mlir.constant(1 : index) : i64
    %70 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb3(%68 : i64)
  ^bb3(%71: i64):  // 2 preds: ^bb2, ^bb10
    %72 = llvm.icmp "slt" %71, %69 : i64
    llvm.cond_br %72, ^bb4, ^bb11
  ^bb4:  // pred: ^bb3
    %73 = llvm.mlir.constant(0 : index) : i64
    %74 = llvm.mlir.constant(2 : index) : i64
    %75 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb5(%73 : i64)
  ^bb5(%76: i64):  // 2 preds: ^bb4, ^bb9
    %77 = llvm.icmp "slt" %76, %74 : i64
    llvm.cond_br %77, ^bb6, ^bb10
  ^bb6:  // pred: ^bb5
    %78 = llvm.mlir.constant(0 : index) : i64
    %79 = llvm.mlir.constant(2 : index) : i64
    %80 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb7(%78 : i64)
  ^bb7(%81: i64):  // 2 preds: ^bb6, ^bb8
    %82 = llvm.icmp "slt" %81, %79 : i64
    llvm.cond_br %82, ^bb8, ^bb9
  ^bb8:  // pred: ^bb7
    %83 = llvm.extractvalue %11[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %84 = llvm.mlir.constant(4 : index) : i64
    %85 = llvm.mul %66, %84  : i64
    %86 = llvm.mlir.constant(4 : index) : i64
    %87 = llvm.mul %71, %86  : i64
    %88 = llvm.add %85, %87  : i64
    %89 = llvm.mlir.constant(2 : index) : i64
    %90 = llvm.mul %76, %89  : i64
    %91 = llvm.add %88, %90  : i64
    %92 = llvm.add %91, %81  : i64
    %93 = llvm.getelementptr %83[%92] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %94 = llvm.load %93 : !llvm.ptr<i32>
    %95 = llvm.extractvalue %27[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %96 = llvm.mlir.constant(2 : index) : i64
    %97 = llvm.mul %76, %96  : i64
    %98 = llvm.add %97, %81  : i64
    %99 = llvm.getelementptr %95[%98] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %100 = llvm.load %99 : !llvm.ptr<i32>
    %101 = llvm.mul %94, %100  : i32
    %102 = llvm.extractvalue %62[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %103 = llvm.mlir.constant(4 : index) : i64
    %104 = llvm.mul %66, %103  : i64
    %105 = llvm.mlir.constant(4 : index) : i64
    %106 = llvm.mul %71, %105  : i64
    %107 = llvm.add %104, %106  : i64
    %108 = llvm.mlir.constant(2 : index) : i64
    %109 = llvm.mul %76, %108  : i64
    %110 = llvm.add %107, %109  : i64
    %111 = llvm.add %110, %81  : i64
    %112 = llvm.getelementptr %102[%111] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %101, %112 : !llvm.ptr<i32>
    %113 = llvm.add %81, %80  : i64
    llvm.br ^bb7(%113 : i64)
  ^bb9:  // pred: ^bb7
    %114 = llvm.add %76, %75  : i64
    llvm.br ^bb5(%114 : i64)
  ^bb10:  // pred: ^bb5
    %115 = llvm.add %71, %70  : i64
    llvm.br ^bb3(%115 : i64)
  ^bb11:  // pred: ^bb3
    %116 = llvm.add %66, %65  : i64
    llvm.br ^bb1(%116 : i64)
  ^bb12:  // pred: ^bb1
    %117 = llvm.mlir.constant(1 : index) : i64
    %118 = llvm.mlir.constant(1 : index) : i64
    %119 = llvm.mlir.constant(2 : index) : i64
    %120 = llvm.mlir.constant(2 : index) : i64
    %121 = llvm.mlir.constant(1 : index) : i64
    %122 = llvm.mlir.constant(4 : index) : i64
    %123 = llvm.mlir.constant(4 : index) : i64
    %124 = llvm.mlir.constant(4 : index) : i64
    %125 = llvm.mlir.null : !llvm.ptr<i32>
    %126 = llvm.getelementptr %125[%124] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %127 = llvm.ptrtoint %126 : !llvm.ptr<i32> to i64
    %128 = llvm.mlir.constant(16 : index) : i64
    %129 = llvm.add %127, %128  : i64
    %130 = llvm.call @malloc(%129) : (i64) -> !llvm.ptr<i8>
    %131 = llvm.bitcast %130 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %132 = llvm.ptrtoint %131 : !llvm.ptr<i32> to i64
    %133 = llvm.mlir.constant(1 : index) : i64
    %134 = llvm.sub %128, %133  : i64
    %135 = llvm.add %132, %134  : i64
    %136 = llvm.urem %135, %128  : i64
    %137 = llvm.sub %135, %136  : i64
    %138 = llvm.inttoptr %137 : i64 to !llvm.ptr<i32>
    %139 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %140 = llvm.insertvalue %131, %139[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %141 = llvm.insertvalue %138, %140[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %142 = llvm.mlir.constant(0 : index) : i64
    %143 = llvm.insertvalue %142, %141[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %144 = llvm.insertvalue %117, %143[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %145 = llvm.insertvalue %118, %144[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %146 = llvm.insertvalue %119, %145[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %147 = llvm.insertvalue %120, %146[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %148 = llvm.insertvalue %123, %147[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %149 = llvm.insertvalue %122, %148[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %150 = llvm.insertvalue %120, %149[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %151 = llvm.insertvalue %121, %150[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %152 = llvm.mlir.constant(0 : index) : i64
    %153 = llvm.mlir.constant(1 : index) : i64
    %154 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb13(%152 : i64)
  ^bb13(%155: i64):  // 2 preds: ^bb12, ^bb23
    %156 = llvm.icmp "slt" %155, %153 : i64
    llvm.cond_br %156, ^bb14, ^bb24
  ^bb14:  // pred: ^bb13
    %157 = llvm.mlir.constant(0 : index) : i64
    %158 = llvm.mlir.constant(1 : index) : i64
    %159 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb15(%157 : i64)
  ^bb15(%160: i64):  // 2 preds: ^bb14, ^bb22
    %161 = llvm.icmp "slt" %160, %158 : i64
    llvm.cond_br %161, ^bb16, ^bb23
  ^bb16:  // pred: ^bb15
    %162 = llvm.mlir.constant(0 : index) : i64
    %163 = llvm.mlir.constant(2 : index) : i64
    %164 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb17(%162 : i64)
  ^bb17(%165: i64):  // 2 preds: ^bb16, ^bb21
    %166 = llvm.icmp "slt" %165, %163 : i64
    llvm.cond_br %166, ^bb18, ^bb22
  ^bb18:  // pred: ^bb17
    %167 = llvm.mlir.constant(0 : index) : i64
    %168 = llvm.mlir.constant(2 : index) : i64
    %169 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb19(%167 : i64)
  ^bb19(%170: i64):  // 2 preds: ^bb18, ^bb20
    %171 = llvm.icmp "slt" %170, %168 : i64
    llvm.cond_br %171, ^bb20, ^bb21
  ^bb20:  // pred: ^bb19
    %172 = llvm.extractvalue %62[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %173 = llvm.mlir.constant(4 : index) : i64
    %174 = llvm.mul %155, %173  : i64
    %175 = llvm.mlir.constant(4 : index) : i64
    %176 = llvm.mul %160, %175  : i64
    %177 = llvm.add %174, %176  : i64
    %178 = llvm.mlir.constant(2 : index) : i64
    %179 = llvm.mul %165, %178  : i64
    %180 = llvm.add %177, %179  : i64
    %181 = llvm.add %180, %170  : i64
    %182 = llvm.getelementptr %172[%181] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %183 = llvm.load %182 : !llvm.ptr<i32>
    %184 = llvm.extractvalue %151[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %185 = llvm.mlir.constant(4 : index) : i64
    %186 = llvm.mul %155, %185  : i64
    %187 = llvm.mlir.constant(4 : index) : i64
    %188 = llvm.mul %160, %187  : i64
    %189 = llvm.add %186, %188  : i64
    %190 = llvm.mlir.constant(2 : index) : i64
    %191 = llvm.mul %165, %190  : i64
    %192 = llvm.add %189, %191  : i64
    %193 = llvm.add %192, %170  : i64
    %194 = llvm.getelementptr %184[%193] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %183, %194 : !llvm.ptr<i32>
    %195 = llvm.add %170, %169  : i64
    llvm.br ^bb19(%195 : i64)
  ^bb21:  // pred: ^bb19
    %196 = llvm.add %165, %164  : i64
    llvm.br ^bb17(%196 : i64)
  ^bb22:  // pred: ^bb17
    %197 = llvm.add %160, %159  : i64
    llvm.br ^bb15(%197 : i64)
  ^bb23:  // pred: ^bb15
    %198 = llvm.add %155, %154  : i64
    llvm.br ^bb13(%198 : i64)
  ^bb24:  // pred: ^bb13
    %199 = llvm.mlir.constant(1 : index) : i64
    %200 = llvm.mlir.constant(1 : index) : i64
    %201 = llvm.mlir.constant(2 : index) : i64
    %202 = llvm.mlir.constant(2 : index) : i64
    %203 = llvm.mlir.constant(1 : index) : i64
    %204 = llvm.mlir.constant(4 : index) : i64
    %205 = llvm.mlir.constant(4 : index) : i64
    %206 = llvm.mlir.constant(4 : index) : i64
    %207 = llvm.mlir.null : !llvm.ptr<i32>
    %208 = llvm.getelementptr %207[%206] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %209 = llvm.ptrtoint %208 : !llvm.ptr<i32> to i64
    %210 = llvm.mlir.constant(16 : index) : i64
    %211 = llvm.add %209, %210  : i64
    %212 = llvm.call @malloc(%211) : (i64) -> !llvm.ptr<i8>
    %213 = llvm.bitcast %212 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %214 = llvm.ptrtoint %213 : !llvm.ptr<i32> to i64
    %215 = llvm.mlir.constant(1 : index) : i64
    %216 = llvm.sub %210, %215  : i64
    %217 = llvm.add %214, %216  : i64
    %218 = llvm.urem %217, %210  : i64
    %219 = llvm.sub %217, %218  : i64
    %220 = llvm.inttoptr %219 : i64 to !llvm.ptr<i32>
    %221 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %222 = llvm.insertvalue %213, %221[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %223 = llvm.insertvalue %220, %222[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %224 = llvm.mlir.constant(0 : index) : i64
    %225 = llvm.insertvalue %224, %223[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %226 = llvm.insertvalue %199, %225[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %227 = llvm.insertvalue %200, %226[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %228 = llvm.insertvalue %201, %227[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %229 = llvm.insertvalue %202, %228[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %230 = llvm.insertvalue %205, %229[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %231 = llvm.insertvalue %204, %230[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %232 = llvm.insertvalue %202, %231[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %233 = llvm.insertvalue %203, %232[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %234 = llvm.mlir.constant(0 : index) : i64
    %235 = llvm.mlir.constant(1 : index) : i64
    %236 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb25(%234 : i64)
  ^bb25(%237: i64):  // 2 preds: ^bb24, ^bb35
    %238 = llvm.icmp "slt" %237, %235 : i64
    llvm.cond_br %238, ^bb26, ^bb36
  ^bb26:  // pred: ^bb25
    %239 = llvm.mlir.constant(0 : index) : i64
    %240 = llvm.mlir.constant(1 : index) : i64
    %241 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb27(%239 : i64)
  ^bb27(%242: i64):  // 2 preds: ^bb26, ^bb34
    %243 = llvm.icmp "slt" %242, %240 : i64
    llvm.cond_br %243, ^bb28, ^bb35
  ^bb28:  // pred: ^bb27
    %244 = llvm.mlir.constant(0 : index) : i64
    %245 = llvm.mlir.constant(2 : index) : i64
    %246 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb29(%244 : i64)
  ^bb29(%247: i64):  // 2 preds: ^bb28, ^bb33
    %248 = llvm.icmp "slt" %247, %245 : i64
    llvm.cond_br %248, ^bb30, ^bb34
  ^bb30:  // pred: ^bb29
    %249 = llvm.mlir.constant(0 : index) : i64
    %250 = llvm.mlir.constant(2 : index) : i64
    %251 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb31(%249 : i64)
  ^bb31(%252: i64):  // 2 preds: ^bb30, ^bb32
    %253 = llvm.icmp "slt" %252, %250 : i64
    llvm.cond_br %253, ^bb32, ^bb33
  ^bb32:  // pred: ^bb31
    %254 = llvm.extractvalue %11[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %255 = llvm.mlir.constant(4 : index) : i64
    %256 = llvm.mul %237, %255  : i64
    %257 = llvm.mlir.constant(4 : index) : i64
    %258 = llvm.mul %242, %257  : i64
    %259 = llvm.add %256, %258  : i64
    %260 = llvm.mlir.constant(2 : index) : i64
    %261 = llvm.mul %247, %260  : i64
    %262 = llvm.add %259, %261  : i64
    %263 = llvm.add %262, %252  : i64
    %264 = llvm.getelementptr %254[%263] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %265 = llvm.load %264 : !llvm.ptr<i32>
    %266 = llvm.extractvalue %151[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %267 = llvm.mlir.constant(4 : index) : i64
    %268 = llvm.mul %237, %267  : i64
    %269 = llvm.mlir.constant(4 : index) : i64
    %270 = llvm.mul %242, %269  : i64
    %271 = llvm.add %268, %270  : i64
    %272 = llvm.mlir.constant(2 : index) : i64
    %273 = llvm.mul %247, %272  : i64
    %274 = llvm.add %271, %273  : i64
    %275 = llvm.add %274, %252  : i64
    %276 = llvm.getelementptr %266[%275] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %277 = llvm.load %276 : !llvm.ptr<i32>
    %278 = llvm.mul %265, %277  : i32
    %279 = llvm.extractvalue %233[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %280 = llvm.mlir.constant(4 : index) : i64
    %281 = llvm.mul %237, %280  : i64
    %282 = llvm.mlir.constant(4 : index) : i64
    %283 = llvm.mul %242, %282  : i64
    %284 = llvm.add %281, %283  : i64
    %285 = llvm.mlir.constant(2 : index) : i64
    %286 = llvm.mul %247, %285  : i64
    %287 = llvm.add %284, %286  : i64
    %288 = llvm.add %287, %252  : i64
    %289 = llvm.getelementptr %279[%288] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %278, %289 : !llvm.ptr<i32>
    %290 = llvm.add %252, %251  : i64
    llvm.br ^bb31(%290 : i64)
  ^bb33:  // pred: ^bb31
    %291 = llvm.add %247, %246  : i64
    llvm.br ^bb29(%291 : i64)
  ^bb34:  // pred: ^bb29
    %292 = llvm.add %242, %241  : i64
    llvm.br ^bb27(%292 : i64)
  ^bb35:  // pred: ^bb27
    %293 = llvm.add %237, %236  : i64
    llvm.br ^bb25(%293 : i64)
  ^bb36:  // pred: ^bb25
    %294 = llvm.mlir.constant(1 : index) : i64
    %295 = llvm.mlir.constant(1 : index) : i64
    %296 = llvm.mlir.constant(2 : index) : i64
    %297 = llvm.mlir.constant(2 : index) : i64
    %298 = llvm.mlir.constant(1 : index) : i64
    %299 = llvm.mlir.constant(4 : index) : i64
    %300 = llvm.mlir.constant(4 : index) : i64
    %301 = llvm.mlir.constant(4 : index) : i64
    %302 = llvm.mlir.null : !llvm.ptr<i32>
    %303 = llvm.getelementptr %302[%301] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %304 = llvm.ptrtoint %303 : !llvm.ptr<i32> to i64
    %305 = llvm.mlir.constant(16 : index) : i64
    %306 = llvm.add %304, %305  : i64
    %307 = llvm.call @malloc(%306) : (i64) -> !llvm.ptr<i8>
    %308 = llvm.bitcast %307 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %309 = llvm.ptrtoint %308 : !llvm.ptr<i32> to i64
    %310 = llvm.mlir.constant(1 : index) : i64
    %311 = llvm.sub %305, %310  : i64
    %312 = llvm.add %309, %311  : i64
    %313 = llvm.urem %312, %305  : i64
    %314 = llvm.sub %312, %313  : i64
    %315 = llvm.inttoptr %314 : i64 to !llvm.ptr<i32>
    %316 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %317 = llvm.insertvalue %308, %316[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %318 = llvm.insertvalue %315, %317[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %319 = llvm.mlir.constant(0 : index) : i64
    %320 = llvm.insertvalue %319, %318[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %321 = llvm.insertvalue %294, %320[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %322 = llvm.insertvalue %295, %321[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %323 = llvm.insertvalue %296, %322[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %324 = llvm.insertvalue %297, %323[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %325 = llvm.insertvalue %300, %324[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %326 = llvm.insertvalue %299, %325[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %327 = llvm.insertvalue %297, %326[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %328 = llvm.insertvalue %298, %327[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %329 = llvm.mlir.constant(0 : index) : i64
    %330 = llvm.mlir.constant(1 : index) : i64
    %331 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb37(%329 : i64)
  ^bb37(%332: i64):  // 2 preds: ^bb36, ^bb47
    %333 = llvm.icmp "slt" %332, %330 : i64
    llvm.cond_br %333, ^bb38, ^bb48
  ^bb38:  // pred: ^bb37
    %334 = llvm.mlir.constant(0 : index) : i64
    %335 = llvm.mlir.constant(1 : index) : i64
    %336 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb39(%334 : i64)
  ^bb39(%337: i64):  // 2 preds: ^bb38, ^bb46
    %338 = llvm.icmp "slt" %337, %335 : i64
    llvm.cond_br %338, ^bb40, ^bb47
  ^bb40:  // pred: ^bb39
    %339 = llvm.mlir.constant(0 : index) : i64
    %340 = llvm.mlir.constant(2 : index) : i64
    %341 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb41(%339 : i64)
  ^bb41(%342: i64):  // 2 preds: ^bb40, ^bb45
    %343 = llvm.icmp "slt" %342, %340 : i64
    llvm.cond_br %343, ^bb42, ^bb46
  ^bb42:  // pred: ^bb41
    %344 = llvm.mlir.constant(0 : index) : i64
    %345 = llvm.mlir.constant(2 : index) : i64
    %346 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb43(%344 : i64)
  ^bb43(%347: i64):  // 2 preds: ^bb42, ^bb44
    %348 = llvm.icmp "slt" %347, %345 : i64
    llvm.cond_br %348, ^bb44, ^bb45
  ^bb44:  // pred: ^bb43
    %349 = llvm.extractvalue %233[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %350 = llvm.mlir.constant(4 : index) : i64
    %351 = llvm.mul %332, %350  : i64
    %352 = llvm.mlir.constant(4 : index) : i64
    %353 = llvm.mul %337, %352  : i64
    %354 = llvm.add %351, %353  : i64
    %355 = llvm.mlir.constant(2 : index) : i64
    %356 = llvm.mul %342, %355  : i64
    %357 = llvm.add %354, %356  : i64
    %358 = llvm.add %357, %347  : i64
    %359 = llvm.getelementptr %349[%358] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %360 = llvm.load %359 : !llvm.ptr<i32>
    %361 = llvm.extractvalue %27[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %362 = llvm.mlir.constant(2 : index) : i64
    %363 = llvm.mul %342, %362  : i64
    %364 = llvm.add %363, %347  : i64
    %365 = llvm.getelementptr %361[%364] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %366 = llvm.load %365 : !llvm.ptr<i32>
    %367 = llvm.mul %360, %366  : i32
    %368 = llvm.extractvalue %328[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %369 = llvm.mlir.constant(4 : index) : i64
    %370 = llvm.mul %332, %369  : i64
    %371 = llvm.mlir.constant(4 : index) : i64
    %372 = llvm.mul %337, %371  : i64
    %373 = llvm.add %370, %372  : i64
    %374 = llvm.mlir.constant(2 : index) : i64
    %375 = llvm.mul %342, %374  : i64
    %376 = llvm.add %373, %375  : i64
    %377 = llvm.add %376, %347  : i64
    %378 = llvm.getelementptr %368[%377] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %367, %378 : !llvm.ptr<i32>
    %379 = llvm.add %347, %346  : i64
    llvm.br ^bb43(%379 : i64)
  ^bb45:  // pred: ^bb43
    %380 = llvm.add %342, %341  : i64
    llvm.br ^bb41(%380 : i64)
  ^bb46:  // pred: ^bb41
    %381 = llvm.add %337, %336  : i64
    llvm.br ^bb39(%381 : i64)
  ^bb47:  // pred: ^bb39
    %382 = llvm.add %332, %331  : i64
    llvm.br ^bb37(%382 : i64)
  ^bb48:  // pred: ^bb37
    %383 = llvm.mlir.constant(1 : index) : i64
    %384 = llvm.mlir.constant(1 : index) : i64
    %385 = llvm.mlir.constant(2 : index) : i64
    %386 = llvm.mlir.constant(2 : index) : i64
    %387 = llvm.mlir.constant(1 : index) : i64
    %388 = llvm.mlir.constant(4 : index) : i64
    %389 = llvm.mlir.constant(4 : index) : i64
    %390 = llvm.mlir.constant(4 : index) : i64
    %391 = llvm.mlir.null : !llvm.ptr<i32>
    %392 = llvm.getelementptr %391[%390] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %393 = llvm.ptrtoint %392 : !llvm.ptr<i32> to i64
    %394 = llvm.mlir.constant(16 : index) : i64
    %395 = llvm.add %393, %394  : i64
    %396 = llvm.call @malloc(%395) : (i64) -> !llvm.ptr<i8>
    %397 = llvm.bitcast %396 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %398 = llvm.ptrtoint %397 : !llvm.ptr<i32> to i64
    %399 = llvm.mlir.constant(1 : index) : i64
    %400 = llvm.sub %394, %399  : i64
    %401 = llvm.add %398, %400  : i64
    %402 = llvm.urem %401, %394  : i64
    %403 = llvm.sub %401, %402  : i64
    %404 = llvm.inttoptr %403 : i64 to !llvm.ptr<i32>
    %405 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %406 = llvm.insertvalue %397, %405[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %407 = llvm.insertvalue %404, %406[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %408 = llvm.mlir.constant(0 : index) : i64
    %409 = llvm.insertvalue %408, %407[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %410 = llvm.insertvalue %383, %409[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %411 = llvm.insertvalue %384, %410[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %412 = llvm.insertvalue %385, %411[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %413 = llvm.insertvalue %386, %412[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %414 = llvm.insertvalue %389, %413[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %415 = llvm.insertvalue %388, %414[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %416 = llvm.insertvalue %386, %415[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %417 = llvm.insertvalue %387, %416[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %418 = llvm.mlir.constant(0 : index) : i64
    %419 = llvm.mlir.constant(1 : index) : i64
    %420 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb49(%418 : i64)
  ^bb49(%421: i64):  // 2 preds: ^bb48, ^bb59
    %422 = llvm.icmp "slt" %421, %419 : i64
    llvm.cond_br %422, ^bb50, ^bb60
  ^bb50:  // pred: ^bb49
    %423 = llvm.mlir.constant(0 : index) : i64
    %424 = llvm.mlir.constant(1 : index) : i64
    %425 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb51(%423 : i64)
  ^bb51(%426: i64):  // 2 preds: ^bb50, ^bb58
    %427 = llvm.icmp "slt" %426, %424 : i64
    llvm.cond_br %427, ^bb52, ^bb59
  ^bb52:  // pred: ^bb51
    %428 = llvm.mlir.constant(0 : index) : i64
    %429 = llvm.mlir.constant(2 : index) : i64
    %430 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb53(%428 : i64)
  ^bb53(%431: i64):  // 2 preds: ^bb52, ^bb57
    %432 = llvm.icmp "slt" %431, %429 : i64
    llvm.cond_br %432, ^bb54, ^bb58
  ^bb54:  // pred: ^bb53
    %433 = llvm.mlir.constant(0 : index) : i64
    %434 = llvm.mlir.constant(2 : index) : i64
    %435 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb55(%433 : i64)
  ^bb55(%436: i64):  // 2 preds: ^bb54, ^bb56
    %437 = llvm.icmp "slt" %436, %434 : i64
    llvm.cond_br %437, ^bb56, ^bb57
  ^bb56:  // pred: ^bb55
    %438 = llvm.extractvalue %151[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %439 = llvm.mlir.constant(4 : index) : i64
    %440 = llvm.mul %421, %439  : i64
    %441 = llvm.mlir.constant(4 : index) : i64
    %442 = llvm.mul %426, %441  : i64
    %443 = llvm.add %440, %442  : i64
    %444 = llvm.mlir.constant(2 : index) : i64
    %445 = llvm.mul %431, %444  : i64
    %446 = llvm.add %443, %445  : i64
    %447 = llvm.add %446, %436  : i64
    %448 = llvm.getelementptr %438[%447] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %449 = llvm.load %448 : !llvm.ptr<i32>
    %450 = llvm.sub %12, %449  : i32
    %451 = llvm.extractvalue %417[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %452 = llvm.mlir.constant(4 : index) : i64
    %453 = llvm.mul %421, %452  : i64
    %454 = llvm.mlir.constant(4 : index) : i64
    %455 = llvm.mul %426, %454  : i64
    %456 = llvm.add %453, %455  : i64
    %457 = llvm.mlir.constant(2 : index) : i64
    %458 = llvm.mul %431, %457  : i64
    %459 = llvm.add %456, %458  : i64
    %460 = llvm.add %459, %436  : i64
    %461 = llvm.getelementptr %451[%460] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %450, %461 : !llvm.ptr<i32>
    %462 = llvm.add %436, %435  : i64
    llvm.br ^bb55(%462 : i64)
  ^bb57:  // pred: ^bb55
    %463 = llvm.add %431, %430  : i64
    llvm.br ^bb53(%463 : i64)
  ^bb58:  // pred: ^bb53
    %464 = llvm.add %426, %425  : i64
    llvm.br ^bb51(%464 : i64)
  ^bb59:  // pred: ^bb51
    %465 = llvm.add %421, %420  : i64
    llvm.br ^bb49(%465 : i64)
  ^bb60:  // pred: ^bb49
    %466 = llvm.mlir.constant(1 : index) : i64
    %467 = llvm.mlir.constant(1 : index) : i64
    %468 = llvm.mlir.constant(2 : index) : i64
    %469 = llvm.mlir.constant(2 : index) : i64
    %470 = llvm.mlir.constant(1 : index) : i64
    %471 = llvm.mlir.constant(4 : index) : i64
    %472 = llvm.mlir.constant(4 : index) : i64
    %473 = llvm.mlir.constant(4 : index) : i64
    %474 = llvm.mlir.null : !llvm.ptr<i1>
    %475 = llvm.getelementptr %474[%473] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    %476 = llvm.ptrtoint %475 : !llvm.ptr<i1> to i64
    %477 = llvm.mlir.constant(16 : index) : i64
    %478 = llvm.add %476, %477  : i64
    %479 = llvm.call @malloc(%478) : (i64) -> !llvm.ptr<i8>
    %480 = llvm.bitcast %479 : !llvm.ptr<i8> to !llvm.ptr<i1>
    %481 = llvm.ptrtoint %480 : !llvm.ptr<i1> to i64
    %482 = llvm.mlir.constant(1 : index) : i64
    %483 = llvm.sub %477, %482  : i64
    %484 = llvm.add %481, %483  : i64
    %485 = llvm.urem %484, %477  : i64
    %486 = llvm.sub %484, %485  : i64
    %487 = llvm.inttoptr %486 : i64 to !llvm.ptr<i1>
    %488 = llvm.mlir.undef : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>
    %489 = llvm.insertvalue %480, %488[0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %490 = llvm.insertvalue %487, %489[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %491 = llvm.mlir.constant(0 : index) : i64
    %492 = llvm.insertvalue %491, %490[2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %493 = llvm.insertvalue %466, %492[3, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %494 = llvm.insertvalue %467, %493[3, 1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %495 = llvm.insertvalue %468, %494[3, 2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %496 = llvm.insertvalue %469, %495[3, 3] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %497 = llvm.insertvalue %472, %496[4, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %498 = llvm.insertvalue %471, %497[4, 1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %499 = llvm.insertvalue %469, %498[4, 2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %500 = llvm.insertvalue %470, %499[4, 3] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %501 = llvm.mlir.constant(0 : index) : i64
    %502 = llvm.mlir.constant(1 : index) : i64
    %503 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb61(%501 : i64)
  ^bb61(%504: i64):  // 2 preds: ^bb60, ^bb71
    %505 = llvm.icmp "slt" %504, %502 : i64
    llvm.cond_br %505, ^bb62, ^bb72
  ^bb62:  // pred: ^bb61
    %506 = llvm.mlir.constant(0 : index) : i64
    %507 = llvm.mlir.constant(1 : index) : i64
    %508 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb63(%506 : i64)
  ^bb63(%509: i64):  // 2 preds: ^bb62, ^bb70
    %510 = llvm.icmp "slt" %509, %507 : i64
    llvm.cond_br %510, ^bb64, ^bb71
  ^bb64:  // pred: ^bb63
    %511 = llvm.mlir.constant(0 : index) : i64
    %512 = llvm.mlir.constant(2 : index) : i64
    %513 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb65(%511 : i64)
  ^bb65(%514: i64):  // 2 preds: ^bb64, ^bb69
    %515 = llvm.icmp "slt" %514, %512 : i64
    llvm.cond_br %515, ^bb66, ^bb70
  ^bb66:  // pred: ^bb65
    %516 = llvm.mlir.constant(0 : index) : i64
    %517 = llvm.mlir.constant(2 : index) : i64
    %518 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb67(%516 : i64)
  ^bb67(%519: i64):  // 2 preds: ^bb66, ^bb68
    %520 = llvm.icmp "slt" %519, %517 : i64
    llvm.cond_br %520, ^bb68, ^bb69
  ^bb68:  // pred: ^bb67
    %521 = llvm.extractvalue %417[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %522 = llvm.mlir.constant(4 : index) : i64
    %523 = llvm.mul %504, %522  : i64
    %524 = llvm.mlir.constant(4 : index) : i64
    %525 = llvm.mul %509, %524  : i64
    %526 = llvm.add %523, %525  : i64
    %527 = llvm.mlir.constant(2 : index) : i64
    %528 = llvm.mul %514, %527  : i64
    %529 = llvm.add %526, %528  : i64
    %530 = llvm.add %529, %519  : i64
    %531 = llvm.getelementptr %521[%530] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %532 = llvm.load %531 : !llvm.ptr<i32>
    %533 = llvm.extractvalue %151[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %534 = llvm.mlir.constant(4 : index) : i64
    %535 = llvm.mul %504, %534  : i64
    %536 = llvm.mlir.constant(4 : index) : i64
    %537 = llvm.mul %509, %536  : i64
    %538 = llvm.add %535, %537  : i64
    %539 = llvm.mlir.constant(2 : index) : i64
    %540 = llvm.mul %514, %539  : i64
    %541 = llvm.add %538, %540  : i64
    %542 = llvm.add %541, %519  : i64
    %543 = llvm.getelementptr %533[%542] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %544 = llvm.load %543 : !llvm.ptr<i32>
    %545 = llvm.icmp "slt" %532, %544 : i32
    %546 = llvm.extractvalue %500[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %547 = llvm.mlir.constant(4 : index) : i64
    %548 = llvm.mul %504, %547  : i64
    %549 = llvm.mlir.constant(4 : index) : i64
    %550 = llvm.mul %509, %549  : i64
    %551 = llvm.add %548, %550  : i64
    %552 = llvm.mlir.constant(2 : index) : i64
    %553 = llvm.mul %514, %552  : i64
    %554 = llvm.add %551, %553  : i64
    %555 = llvm.add %554, %519  : i64
    %556 = llvm.getelementptr %546[%555] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    llvm.store %545, %556 : !llvm.ptr<i1>
    %557 = llvm.add %519, %518  : i64
    llvm.br ^bb67(%557 : i64)
  ^bb69:  // pred: ^bb67
    %558 = llvm.add %514, %513  : i64
    llvm.br ^bb65(%558 : i64)
  ^bb70:  // pred: ^bb65
    %559 = llvm.add %509, %508  : i64
    llvm.br ^bb63(%559 : i64)
  ^bb71:  // pred: ^bb63
    %560 = llvm.add %504, %503  : i64
    llvm.br ^bb61(%560 : i64)
  ^bb72:  // pred: ^bb61
    %561 = llvm.mlir.undef : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>)>
    %562 = llvm.insertvalue %328, %561[0] : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>)> 
    %563 = llvm.insertvalue %500, %562[1] : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>)> 
    llvm.return %563 : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>)>
  }
  llvm.func @_mlir_ciface_main_graph(%arg0: !llvm.ptr<struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>)>>, %arg1: !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>) attributes {input_names = ["v5_0"], llvm.emit_c_interface, output_names = ["v1_0", "v4_0"]} {
    %0 = llvm.load %arg1 : !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>
    %1 = llvm.extractvalue %0[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %2 = llvm.extractvalue %0[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %3 = llvm.extractvalue %0[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %4 = llvm.extractvalue %0[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %5 = llvm.extractvalue %0[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %6 = llvm.extractvalue %0[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %7 = llvm.extractvalue %0[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %8 = llvm.extractvalue %0[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %9 = llvm.extractvalue %0[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %10 = llvm.extractvalue %0[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %11 = llvm.extractvalue %0[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %12 = llvm.call @main_graph(%1, %2, %3, %4, %5, %6, %7, %8, %9, %10, %11) : (!llvm.ptr<i32>, !llvm.ptr<i32>, i64, i64, i64, i64, i64, i64, i64, i64, i64) -> !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>)>
    llvm.store %12, %arg0 : !llvm.ptr<struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>)>>
    llvm.return
  }
  llvm.func @run_main_graph(%arg0: !llvm.ptr<i8>) -> !llvm.ptr<i8> {
    %0 = llvm.call @omTensorListGetOmtArray(%arg0) : (!llvm.ptr<i8>) -> !llvm.ptr<ptr<i8>>
    %1 = llvm.mlir.constant(1 : i64) : i64
    %2 = llvm.alloca %1 x !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>)> : (i64) -> !llvm.ptr<struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>)>>
    %3 = llvm.mlir.constant(0 : i64) : i64
    %4 = llvm.getelementptr %0[%3] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    %5 = llvm.load %4 : !llvm.ptr<ptr<i8>>
    %6 = llvm.alloca %1 x !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> : (i64) -> !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>
    %7 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %8 = llvm.call @omTensorGetDataPtr(%5) : (!llvm.ptr<i8>) -> !llvm.ptr<i8>
    %9 = llvm.bitcast %8 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %10 = llvm.insertvalue %9, %7[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %11 = llvm.insertvalue %9, %10[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %12 = llvm.mlir.constant(0 : i64) : i64
    %13 = llvm.insertvalue %12, %11[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %14 = llvm.call @omTensorGetShape(%5) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %15 = llvm.call @omTensorGetStrides(%5) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %16 = llvm.mlir.constant(0 : i64) : i64
    %17 = llvm.getelementptr %14[%16] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %18 = llvm.load %17 : !llvm.ptr<i64>
    %19 = llvm.insertvalue %18, %13[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %20 = llvm.getelementptr %15[%16] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %21 = llvm.load %20 : !llvm.ptr<i64>
    %22 = llvm.insertvalue %21, %19[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %23 = llvm.mlir.constant(1 : i64) : i64
    %24 = llvm.getelementptr %14[%23] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %25 = llvm.load %24 : !llvm.ptr<i64>
    %26 = llvm.insertvalue %25, %22[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %27 = llvm.getelementptr %15[%23] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %28 = llvm.load %27 : !llvm.ptr<i64>
    %29 = llvm.insertvalue %28, %26[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %30 = llvm.mlir.constant(2 : i64) : i64
    %31 = llvm.getelementptr %14[%30] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %32 = llvm.load %31 : !llvm.ptr<i64>
    %33 = llvm.insertvalue %32, %29[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %34 = llvm.getelementptr %15[%30] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %35 = llvm.load %34 : !llvm.ptr<i64>
    %36 = llvm.insertvalue %35, %33[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %37 = llvm.mlir.constant(3 : i64) : i64
    %38 = llvm.getelementptr %14[%37] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %39 = llvm.load %38 : !llvm.ptr<i64>
    %40 = llvm.insertvalue %39, %36[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %41 = llvm.getelementptr %15[%37] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %42 = llvm.load %41 : !llvm.ptr<i64>
    %43 = llvm.insertvalue %42, %40[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    llvm.store %43, %6 : !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>
    llvm.call @_mlir_ciface_main_graph(%2, %6) : (!llvm.ptr<struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>)>>, !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>) -> ()
    %44 = llvm.load %2 : !llvm.ptr<struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>)>>
    %45 = llvm.extractvalue %44[0] : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>)> 
    %46 = llvm.extractvalue %44[1] : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>)> 
    %47 = llvm.mlir.constant(2 : i64) : i64
    %48 = llvm.mlir.constant(16 : i64) : i64
    %49 = llvm.call @malloc(%48) : (i64) -> !llvm.ptr<i8>
    %50 = llvm.bitcast %49 : !llvm.ptr<i8> to !llvm.ptr<ptr<i8>>
    %51 = llvm.mlir.constant(4 : i64) : i64
    %52 = llvm.call @omTensorCreateUntyped(%51) : (i64) -> !llvm.ptr<i8>
    %53 = llvm.mlir.constant(1 : i64) : i64
    %54 = llvm.extractvalue %45[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %55 = llvm.bitcast %54 : !llvm.ptr<i32> to !llvm.ptr<i8>
    %56 = llvm.extractvalue %45[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %57 = llvm.bitcast %56 : !llvm.ptr<i32> to !llvm.ptr<i8>
    llvm.call @omTensorSetDataPtr(%52, %53, %55, %57) : (!llvm.ptr<i8>, i64, !llvm.ptr<i8>, !llvm.ptr<i8>) -> ()
    %58 = llvm.mlir.constant(6 : i64) : i64
    llvm.call @omTensorSetDataType(%52, %58) : (!llvm.ptr<i8>, i64) -> ()
    %59 = llvm.call @omTensorGetShape(%52) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %60 = llvm.call @omTensorGetStrides(%52) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %61 = llvm.mlir.constant(0 : i64) : i64
    %62 = llvm.extractvalue %45[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %63 = llvm.getelementptr %59[%61] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %62, %63 : !llvm.ptr<i64>
    %64 = llvm.extractvalue %45[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %65 = llvm.getelementptr %60[%61] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %64, %65 : !llvm.ptr<i64>
    %66 = llvm.mlir.constant(1 : i64) : i64
    %67 = llvm.extractvalue %45[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %68 = llvm.getelementptr %59[%66] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %67, %68 : !llvm.ptr<i64>
    %69 = llvm.extractvalue %45[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %70 = llvm.getelementptr %60[%66] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %69, %70 : !llvm.ptr<i64>
    %71 = llvm.mlir.constant(2 : i64) : i64
    %72 = llvm.extractvalue %45[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %73 = llvm.getelementptr %59[%71] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %72, %73 : !llvm.ptr<i64>
    %74 = llvm.extractvalue %45[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %75 = llvm.getelementptr %60[%71] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %74, %75 : !llvm.ptr<i64>
    %76 = llvm.mlir.constant(3 : i64) : i64
    %77 = llvm.extractvalue %45[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %78 = llvm.getelementptr %59[%76] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %77, %78 : !llvm.ptr<i64>
    %79 = llvm.extractvalue %45[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %80 = llvm.getelementptr %60[%76] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %79, %80 : !llvm.ptr<i64>
    %81 = llvm.mlir.constant(0 : i64) : i64
    %82 = llvm.getelementptr %50[%81] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    llvm.store %52, %82 : !llvm.ptr<ptr<i8>>
    %83 = llvm.mlir.constant(4 : i64) : i64
    %84 = llvm.call @omTensorCreateUntyped(%83) : (i64) -> !llvm.ptr<i8>
    %85 = llvm.mlir.constant(1 : i64) : i64
    %86 = llvm.extractvalue %46[0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %87 = llvm.bitcast %86 : !llvm.ptr<i1> to !llvm.ptr<i8>
    %88 = llvm.extractvalue %46[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %89 = llvm.bitcast %88 : !llvm.ptr<i1> to !llvm.ptr<i8>
    llvm.call @omTensorSetDataPtr(%84, %85, %87, %89) : (!llvm.ptr<i8>, i64, !llvm.ptr<i8>, !llvm.ptr<i8>) -> ()
    %90 = llvm.mlir.constant(9 : i64) : i64
    llvm.call @omTensorSetDataType(%84, %90) : (!llvm.ptr<i8>, i64) -> ()
    %91 = llvm.call @omTensorGetShape(%84) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %92 = llvm.call @omTensorGetStrides(%84) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %93 = llvm.mlir.constant(0 : i64) : i64
    %94 = llvm.extractvalue %46[3, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %95 = llvm.getelementptr %91[%93] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %94, %95 : !llvm.ptr<i64>
    %96 = llvm.extractvalue %46[4, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %97 = llvm.getelementptr %92[%93] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %96, %97 : !llvm.ptr<i64>
    %98 = llvm.mlir.constant(1 : i64) : i64
    %99 = llvm.extractvalue %46[3, 1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %100 = llvm.getelementptr %91[%98] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %99, %100 : !llvm.ptr<i64>
    %101 = llvm.extractvalue %46[4, 1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %102 = llvm.getelementptr %92[%98] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %101, %102 : !llvm.ptr<i64>
    %103 = llvm.mlir.constant(2 : i64) : i64
    %104 = llvm.extractvalue %46[3, 2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %105 = llvm.getelementptr %91[%103] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %104, %105 : !llvm.ptr<i64>
    %106 = llvm.extractvalue %46[4, 2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %107 = llvm.getelementptr %92[%103] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %106, %107 : !llvm.ptr<i64>
    %108 = llvm.mlir.constant(3 : i64) : i64
    %109 = llvm.extractvalue %46[3, 3] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %110 = llvm.getelementptr %91[%108] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %109, %110 : !llvm.ptr<i64>
    %111 = llvm.extractvalue %46[4, 3] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %112 = llvm.getelementptr %92[%108] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %111, %112 : !llvm.ptr<i64>
    %113 = llvm.mlir.constant(1 : i64) : i64
    %114 = llvm.getelementptr %50[%113] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    llvm.store %84, %114 : !llvm.ptr<ptr<i8>>
    %115 = llvm.call @omTensorListCreate(%50, %47, %1) : (!llvm.ptr<ptr<i8>>, i64, i64) -> !llvm.ptr<i8>
    llvm.return %115 : !llvm.ptr<i8>
  }
  llvm.mlir.global internal constant @_entry_point_arrays() {addr_space = 0 : i32} : !llvm.array<2 x ptr<i8>> {
    %0 = llvm.mlir.undef : !llvm.array<2 x ptr<i8>>
    %1 = llvm.mlir.addressof @_entry_point_0 : !llvm.ptr<array<15 x i8>>
    %2 = llvm.mlir.constant(0 : i64) : i64
    %3 = llvm.getelementptr %1[%2, %2] : (!llvm.ptr<array<15 x i8>>, i64, i64) -> !llvm.ptr<i8>
    %4 = llvm.insertvalue %3, %0[0] : !llvm.array<2 x ptr<i8>> 
    %5 = llvm.mlir.null : !llvm.ptr<i8>
    %6 = llvm.insertvalue %5, %4[1] : !llvm.array<2 x ptr<i8>> 
    llvm.return %6 : !llvm.array<2 x ptr<i8>>
  }
  llvm.func @omQueryEntryPoints(%arg0: !llvm.ptr<i64>) -> !llvm.ptr<ptr<i8>> {
    %0 = llvm.mlir.null : !llvm.ptr<i64>
    %1 = llvm.icmp "ne" %arg0, %0 : !llvm.ptr<i64>
    llvm.cond_br %1, ^bb1, ^bb2
  ^bb1:  // pred: ^bb0
    %2 = llvm.mlir.constant(0 : i64) : i64
    %3 = llvm.getelementptr %arg0[%2] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %4 = llvm.mlir.constant(1 : i64) : i64
    llvm.store %4, %3 : !llvm.ptr<i64>
    llvm.br ^bb2
  ^bb2:  // 2 preds: ^bb0, ^bb1
    %5 = llvm.mlir.addressof @_entry_point_arrays : !llvm.ptr<array<2 x ptr<i8>>>
    %6 = llvm.bitcast %5 : !llvm.ptr<array<2 x ptr<i8>>> to !llvm.ptr<ptr<i8>>
    llvm.return %6 : !llvm.ptr<ptr<i8>>
  }
  llvm.func @omInputSignature(%arg0: !llvm.ptr<i8>) -> !llvm.ptr<i8> {
    %0 = llvm.mlir.constant(0 : i32) : i32
    %1 = llvm.mlir.addressof @_entry_point_0 : !llvm.ptr<array<15 x i8>>
    %2 = llvm.mlir.constant(0 : i64) : i64
    %3 = llvm.getelementptr %1[%2, %2] : (!llvm.ptr<array<15 x i8>>, i64, i64) -> !llvm.ptr<i8>
    %4 = llvm.mlir.constant(15 : i64) : i64
    %5 = llvm.call @strncmp(%arg0, %3, %4) : (!llvm.ptr<i8>, !llvm.ptr<i8>, i64) -> i32
    %6 = llvm.icmp "eq" %5, %0 : i32
    llvm.cond_br %6, ^bb1, ^bb2
  ^bb1:  // pred: ^bb0
    %7 = llvm.mlir.addressof @_entry_point_0_in_sig : !llvm.ptr<array<72 x i8>>
    %8 = llvm.bitcast %7 : !llvm.ptr<array<72 x i8>> to !llvm.ptr<i8>
    llvm.return %8 : !llvm.ptr<i8>
  ^bb2:  // pred: ^bb0
    %9 = llvm.mlir.null : !llvm.ptr<i8>
    llvm.return %9 : !llvm.ptr<i8>
  }
  llvm.func @omOutputSignature(%arg0: !llvm.ptr<i8>) -> !llvm.ptr<i8> {
    %0 = llvm.mlir.constant(0 : i32) : i32
    %1 = llvm.mlir.addressof @_entry_point_0 : !llvm.ptr<array<15 x i8>>
    %2 = llvm.mlir.constant(0 : i64) : i64
    %3 = llvm.getelementptr %1[%2, %2] : (!llvm.ptr<array<15 x i8>>, i64, i64) -> !llvm.ptr<i8>
    %4 = llvm.mlir.constant(15 : i64) : i64
    %5 = llvm.call @strncmp(%arg0, %3, %4) : (!llvm.ptr<i8>, !llvm.ptr<i8>, i64) -> i32
    %6 = llvm.icmp "eq" %5, %0 : i32
    llvm.cond_br %6, ^bb1, ^bb2
  ^bb1:  // pred: ^bb0
    %7 = llvm.mlir.addressof @_entry_point_0_out_sig : !llvm.ptr<array<140 x i8>>
    %8 = llvm.bitcast %7 : !llvm.ptr<array<140 x i8>> to !llvm.ptr<i8>
    llvm.return %8 : !llvm.ptr<i8>
  ^bb2:  // pred: ^bb0
    %9 = llvm.mlir.null : !llvm.ptr<i8>
    llvm.return %9 : !llvm.ptr<i8>
  }
}

