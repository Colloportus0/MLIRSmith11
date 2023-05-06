module attributes {llvm.data_layout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128", llvm.target_triple = "x86_64-unknown-linux-gnu"} {
  llvm.func @strncmp(!llvm.ptr<i8>, !llvm.ptr<i8>, i64) -> i32
  llvm.mlir.global external constant @_entry_point_0("run_main_graph\00") {addr_space = 0 : i32}
  llvm.mlir.global external constant @_entry_point_0_in_sig("[    { \22type\22 : \22i32\22 , \22dims\22 : [2 , 2 , 1] , \22name\22 : \22v2_0\22 }\0A\0A]\00") {addr_space = 0 : i32}
  llvm.mlir.global external constant @_entry_point_0_out_sig("[   { \22type\22 : \22i1\22 , \22dims\22 : [2 , 2 , 1] , \22name\22 : \22v5_0\22 }\0A ,    { \22type\22 : \22i32\22 , \22dims\22 : [8] , \22name\22 : \22v6_0\22 }\0A\0A]\00") {addr_space = 0 : i32}
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
  llvm.mlir.global internal constant @constant_3(dense<[[[[5, 5]], [[7, 6]]]]> : tensor<1x2x1x2xi32>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<1 x array<2 x array<1 x array<2 x i32>>>>
  llvm.mlir.global internal constant @constant_1(dense<1> : tensor<i32>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<1 x i32>
  llvm.mlir.global internal constant @constant_0(dense<-1> : tensor<i32>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<1 x i32>
  llvm.func @main_graph(%arg0: !llvm.ptr<i32>, %arg1: !llvm.ptr<i32>, %arg2: i64, %arg3: i64, %arg4: i64, %arg5: i64, %arg6: i64, %arg7: i64, %arg8: i64) -> !llvm.struct<(struct<(ptr<i1>, ptr<i1>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>)> attributes {input_names = ["v2_0"], llvm.emit_c_interface, output_names = ["v5_0", "v6_0"]} {
    %0 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>
    %1 = llvm.insertvalue %arg0, %0[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %2 = llvm.insertvalue %arg1, %1[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %3 = llvm.insertvalue %arg2, %2[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %4 = llvm.insertvalue %arg3, %3[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %5 = llvm.insertvalue %arg6, %4[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %6 = llvm.insertvalue %arg4, %5[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %7 = llvm.insertvalue %arg7, %6[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %8 = llvm.insertvalue %arg5, %7[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %9 = llvm.insertvalue %arg8, %8[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %10 = llvm.mlir.constant(0 : index) : i64
    %11 = llvm.mlir.addressof @constant_0 : !llvm.ptr<array<1 x i32>>
    %12 = llvm.bitcast %11 : !llvm.ptr<array<1 x i32>> to !llvm.ptr<i32>
    %13 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64)>
    %14 = llvm.insertvalue %12, %13[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64)> 
    %15 = llvm.insertvalue %12, %14[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64)> 
    %16 = llvm.mlir.constant(0 : index) : i64
    %17 = llvm.insertvalue %16, %15[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64)> 
    %18 = llvm.mlir.addressof @constant_1 : !llvm.ptr<array<1 x i32>>
    %19 = llvm.bitcast %18 : !llvm.ptr<array<1 x i32>> to !llvm.ptr<i32>
    %20 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64)>
    %21 = llvm.insertvalue %19, %20[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64)> 
    %22 = llvm.insertvalue %19, %21[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64)> 
    %23 = llvm.mlir.constant(0 : index) : i64
    %24 = llvm.insertvalue %23, %22[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64)> 
    %25 = llvm.mlir.addressof @constant_3 : !llvm.ptr<array<1 x array<2 x array<1 x array<2 x i32>>>>>
    %26 = llvm.bitcast %25 : !llvm.ptr<array<1 x array<2 x array<1 x array<2 x i32>>>>> to !llvm.ptr<i32>
    %27 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %28 = llvm.insertvalue %26, %27[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %29 = llvm.insertvalue %26, %28[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %30 = llvm.mlir.constant(0 : index) : i64
    %31 = llvm.insertvalue %30, %29[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %32 = llvm.mlir.constant(1 : index) : i64
    %33 = llvm.insertvalue %32, %31[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %34 = llvm.mlir.constant(4 : index) : i64
    %35 = llvm.insertvalue %34, %33[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %36 = llvm.mlir.constant(2 : index) : i64
    %37 = llvm.insertvalue %36, %35[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %38 = llvm.mlir.constant(2 : index) : i64
    %39 = llvm.insertvalue %38, %37[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %40 = llvm.mlir.constant(1 : index) : i64
    %41 = llvm.insertvalue %40, %39[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %42 = llvm.mlir.constant(2 : index) : i64
    %43 = llvm.insertvalue %42, %41[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %44 = llvm.mlir.constant(2 : index) : i64
    %45 = llvm.insertvalue %44, %43[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %46 = llvm.mlir.constant(1 : index) : i64
    %47 = llvm.insertvalue %46, %45[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %48 = llvm.mlir.constant(2 : index) : i64
    %49 = llvm.mlir.constant(2 : index) : i64
    %50 = llvm.mlir.constant(1 : index) : i64
    %51 = llvm.mlir.constant(1 : index) : i64
    %52 = llvm.mlir.constant(4 : index) : i64
    %53 = llvm.mlir.null : !llvm.ptr<i32>
    %54 = llvm.getelementptr %53[%52] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %55 = llvm.ptrtoint %54 : !llvm.ptr<i32> to i64
    %56 = llvm.mlir.constant(16 : index) : i64
    %57 = llvm.add %55, %56  : i64
    %58 = llvm.call @malloc(%57) : (i64) -> !llvm.ptr<i8>
    %59 = llvm.bitcast %58 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %60 = llvm.ptrtoint %59 : !llvm.ptr<i32> to i64
    %61 = llvm.mlir.constant(1 : index) : i64
    %62 = llvm.sub %56, %61  : i64
    %63 = llvm.add %60, %62  : i64
    %64 = llvm.urem %63, %56  : i64
    %65 = llvm.sub %63, %64  : i64
    %66 = llvm.inttoptr %65 : i64 to !llvm.ptr<i32>
    %67 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>
    %68 = llvm.insertvalue %59, %67[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %69 = llvm.insertvalue %66, %68[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %70 = llvm.mlir.constant(0 : index) : i64
    %71 = llvm.insertvalue %70, %69[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %72 = llvm.insertvalue %48, %71[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %73 = llvm.insertvalue %49, %72[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %74 = llvm.insertvalue %50, %73[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %75 = llvm.insertvalue %49, %74[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %76 = llvm.insertvalue %50, %75[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %77 = llvm.insertvalue %51, %76[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %78 = llvm.mlir.constant(0 : index) : i64
    %79 = llvm.mlir.constant(2 : index) : i64
    %80 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb1(%78 : i64)
  ^bb1(%81: i64):  // 2 preds: ^bb0, ^bb8
    %82 = llvm.icmp "slt" %81, %79 : i64
    llvm.cond_br %82, ^bb2, ^bb9
  ^bb2:  // pred: ^bb1
    %83 = llvm.mlir.constant(0 : index) : i64
    %84 = llvm.mlir.constant(2 : index) : i64
    %85 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb3(%83 : i64)
  ^bb3(%86: i64):  // 2 preds: ^bb2, ^bb7
    %87 = llvm.icmp "slt" %86, %84 : i64
    llvm.cond_br %87, ^bb4, ^bb8
  ^bb4:  // pred: ^bb3
    %88 = llvm.mlir.constant(0 : index) : i64
    %89 = llvm.mlir.constant(1 : index) : i64
    %90 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb5(%88 : i64)
  ^bb5(%91: i64):  // 2 preds: ^bb4, ^bb6
    %92 = llvm.icmp "slt" %91, %89 : i64
    llvm.cond_br %92, ^bb6, ^bb7
  ^bb6:  // pred: ^bb5
    %93 = llvm.extractvalue %9[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %94 = llvm.mlir.constant(2 : index) : i64
    %95 = llvm.mul %81, %94  : i64
    %96 = llvm.add %95, %86  : i64
    %97 = llvm.add %96, %91  : i64
    %98 = llvm.getelementptr %93[%97] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %99 = llvm.load %98 : !llvm.ptr<i32>
    %100 = llvm.extractvalue %17[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64)> 
    %101 = llvm.load %100 : !llvm.ptr<i32>
    %102 = llvm.icmp "slt" %99, %101 : i32
    %103 = llvm.select %102, %101, %99 : i1, i32
    %104 = llvm.extractvalue %24[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64)> 
    %105 = llvm.load %104 : !llvm.ptr<i32>
    %106 = llvm.icmp "slt" %103, %105 : i32
    %107 = llvm.select %106, %103, %105 : i1, i32
    %108 = llvm.extractvalue %77[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %109 = llvm.mlir.constant(2 : index) : i64
    %110 = llvm.mul %81, %109  : i64
    %111 = llvm.add %110, %86  : i64
    %112 = llvm.add %111, %91  : i64
    %113 = llvm.getelementptr %108[%112] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %107, %113 : !llvm.ptr<i32>
    %114 = llvm.add %91, %90  : i64
    llvm.br ^bb5(%114 : i64)
  ^bb7:  // pred: ^bb5
    %115 = llvm.add %86, %85  : i64
    llvm.br ^bb3(%115 : i64)
  ^bb8:  // pred: ^bb3
    %116 = llvm.add %81, %80  : i64
    llvm.br ^bb1(%116 : i64)
  ^bb9:  // pred: ^bb1
    %117 = llvm.mlir.constant(2 : index) : i64
    %118 = llvm.mlir.constant(2 : index) : i64
    %119 = llvm.mlir.constant(1 : index) : i64
    %120 = llvm.mlir.constant(1 : index) : i64
    %121 = llvm.mlir.constant(4 : index) : i64
    %122 = llvm.mlir.null : !llvm.ptr<i1>
    %123 = llvm.getelementptr %122[%121] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    %124 = llvm.ptrtoint %123 : !llvm.ptr<i1> to i64
    %125 = llvm.mlir.constant(16 : index) : i64
    %126 = llvm.add %124, %125  : i64
    %127 = llvm.call @malloc(%126) : (i64) -> !llvm.ptr<i8>
    %128 = llvm.bitcast %127 : !llvm.ptr<i8> to !llvm.ptr<i1>
    %129 = llvm.ptrtoint %128 : !llvm.ptr<i1> to i64
    %130 = llvm.mlir.constant(1 : index) : i64
    %131 = llvm.sub %125, %130  : i64
    %132 = llvm.add %129, %131  : i64
    %133 = llvm.urem %132, %125  : i64
    %134 = llvm.sub %132, %133  : i64
    %135 = llvm.inttoptr %134 : i64 to !llvm.ptr<i1>
    %136 = llvm.mlir.undef : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<3 x i64>, array<3 x i64>)>
    %137 = llvm.insertvalue %128, %136[0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<3 x i64>, array<3 x i64>)> 
    %138 = llvm.insertvalue %135, %137[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<3 x i64>, array<3 x i64>)> 
    %139 = llvm.mlir.constant(0 : index) : i64
    %140 = llvm.insertvalue %139, %138[2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<3 x i64>, array<3 x i64>)> 
    %141 = llvm.insertvalue %117, %140[3, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<3 x i64>, array<3 x i64>)> 
    %142 = llvm.insertvalue %118, %141[3, 1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<3 x i64>, array<3 x i64>)> 
    %143 = llvm.insertvalue %119, %142[3, 2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<3 x i64>, array<3 x i64>)> 
    %144 = llvm.insertvalue %118, %143[4, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<3 x i64>, array<3 x i64>)> 
    %145 = llvm.insertvalue %119, %144[4, 1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<3 x i64>, array<3 x i64>)> 
    %146 = llvm.insertvalue %120, %145[4, 2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<3 x i64>, array<3 x i64>)> 
    %147 = llvm.mlir.constant(0 : index) : i64
    %148 = llvm.mlir.constant(2 : index) : i64
    %149 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb10(%147 : i64)
  ^bb10(%150: i64):  // 2 preds: ^bb9, ^bb17
    %151 = llvm.icmp "slt" %150, %148 : i64
    llvm.cond_br %151, ^bb11, ^bb18
  ^bb11:  // pred: ^bb10
    %152 = llvm.mlir.constant(0 : index) : i64
    %153 = llvm.mlir.constant(2 : index) : i64
    %154 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb12(%152 : i64)
  ^bb12(%155: i64):  // 2 preds: ^bb11, ^bb16
    %156 = llvm.icmp "slt" %155, %153 : i64
    llvm.cond_br %156, ^bb13, ^bb17
  ^bb13:  // pred: ^bb12
    %157 = llvm.mlir.constant(0 : index) : i64
    %158 = llvm.mlir.constant(1 : index) : i64
    %159 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb14(%157 : i64)
  ^bb14(%160: i64):  // 2 preds: ^bb13, ^bb15
    %161 = llvm.icmp "slt" %160, %158 : i64
    llvm.cond_br %161, ^bb15, ^bb16
  ^bb15:  // pred: ^bb14
    %162 = llvm.extractvalue %9[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %163 = llvm.mlir.constant(2 : index) : i64
    %164 = llvm.mul %150, %163  : i64
    %165 = llvm.add %164, %155  : i64
    %166 = llvm.add %165, %160  : i64
    %167 = llvm.getelementptr %162[%166] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %168 = llvm.load %167 : !llvm.ptr<i32>
    %169 = llvm.extractvalue %77[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %170 = llvm.mlir.constant(2 : index) : i64
    %171 = llvm.mul %150, %170  : i64
    %172 = llvm.add %171, %155  : i64
    %173 = llvm.add %172, %160  : i64
    %174 = llvm.getelementptr %169[%173] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %175 = llvm.load %174 : !llvm.ptr<i32>
    %176 = llvm.icmp "slt" %168, %175 : i32
    %177 = llvm.extractvalue %146[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<3 x i64>, array<3 x i64>)> 
    %178 = llvm.mlir.constant(2 : index) : i64
    %179 = llvm.mul %150, %178  : i64
    %180 = llvm.add %179, %155  : i64
    %181 = llvm.add %180, %160  : i64
    %182 = llvm.getelementptr %177[%181] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    llvm.store %176, %182 : !llvm.ptr<i1>
    %183 = llvm.add %160, %159  : i64
    llvm.br ^bb14(%183 : i64)
  ^bb16:  // pred: ^bb14
    %184 = llvm.add %155, %154  : i64
    llvm.br ^bb12(%184 : i64)
  ^bb17:  // pred: ^bb12
    %185 = llvm.add %150, %149  : i64
    llvm.br ^bb10(%185 : i64)
  ^bb18:  // pred: ^bb10
    %186 = llvm.mlir.constant(1 : index) : i64
    %187 = llvm.mlir.constant(2 : index) : i64
    %188 = llvm.mlir.constant(2 : index) : i64
    %189 = llvm.mlir.constant(2 : index) : i64
    %190 = llvm.mlir.constant(1 : index) : i64
    %191 = llvm.mlir.constant(4 : index) : i64
    %192 = llvm.mlir.constant(8 : index) : i64
    %193 = llvm.mlir.constant(8 : index) : i64
    %194 = llvm.mlir.null : !llvm.ptr<i32>
    %195 = llvm.getelementptr %194[%193] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %196 = llvm.ptrtoint %195 : !llvm.ptr<i32> to i64
    %197 = llvm.mlir.constant(16 : index) : i64
    %198 = llvm.add %196, %197  : i64
    %199 = llvm.call @malloc(%198) : (i64) -> !llvm.ptr<i8>
    %200 = llvm.bitcast %199 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %201 = llvm.ptrtoint %200 : !llvm.ptr<i32> to i64
    %202 = llvm.mlir.constant(1 : index) : i64
    %203 = llvm.sub %197, %202  : i64
    %204 = llvm.add %201, %203  : i64
    %205 = llvm.urem %204, %197  : i64
    %206 = llvm.sub %204, %205  : i64
    %207 = llvm.inttoptr %206 : i64 to !llvm.ptr<i32>
    %208 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %209 = llvm.insertvalue %200, %208[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %210 = llvm.insertvalue %207, %209[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %211 = llvm.mlir.constant(0 : index) : i64
    %212 = llvm.insertvalue %211, %210[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %213 = llvm.insertvalue %186, %212[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %214 = llvm.insertvalue %187, %213[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %215 = llvm.insertvalue %188, %214[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %216 = llvm.insertvalue %189, %215[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %217 = llvm.insertvalue %192, %216[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %218 = llvm.insertvalue %191, %217[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %219 = llvm.insertvalue %189, %218[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %220 = llvm.insertvalue %190, %219[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %221 = llvm.mlir.constant(0 : index) : i64
    %222 = llvm.mlir.constant(1 : index) : i64
    %223 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb19(%221 : i64)
  ^bb19(%224: i64):  // 2 preds: ^bb18, ^bb29
    %225 = llvm.icmp "slt" %224, %222 : i64
    llvm.cond_br %225, ^bb20, ^bb30
  ^bb20:  // pred: ^bb19
    %226 = llvm.mlir.constant(0 : index) : i64
    %227 = llvm.mlir.constant(2 : index) : i64
    %228 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb21(%226 : i64)
  ^bb21(%229: i64):  // 2 preds: ^bb20, ^bb28
    %230 = llvm.icmp "slt" %229, %227 : i64
    llvm.cond_br %230, ^bb22, ^bb29
  ^bb22:  // pred: ^bb21
    %231 = llvm.mlir.constant(0 : index) : i64
    %232 = llvm.mlir.constant(2 : index) : i64
    %233 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb23(%231 : i64)
  ^bb23(%234: i64):  // 2 preds: ^bb22, ^bb27
    %235 = llvm.icmp "slt" %234, %232 : i64
    llvm.cond_br %235, ^bb24, ^bb28
  ^bb24:  // pred: ^bb23
    %236 = llvm.mlir.constant(0 : index) : i64
    %237 = llvm.mlir.constant(2 : index) : i64
    %238 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb25(%236 : i64)
  ^bb25(%239: i64):  // 2 preds: ^bb24, ^bb26
    %240 = llvm.icmp "slt" %239, %237 : i64
    llvm.cond_br %240, ^bb26, ^bb27
  ^bb26:  // pred: ^bb25
    %241 = llvm.extractvalue %9[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %242 = llvm.mlir.constant(2 : index) : i64
    %243 = llvm.mul %229, %242  : i64
    %244 = llvm.add %243, %234  : i64
    %245 = llvm.add %244, %10  : i64
    %246 = llvm.getelementptr %241[%245] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %247 = llvm.load %246 : !llvm.ptr<i32>
    %248 = llvm.extractvalue %47[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %249 = llvm.mlir.constant(4 : index) : i64
    %250 = llvm.mul %224, %249  : i64
    %251 = llvm.mlir.constant(2 : index) : i64
    %252 = llvm.mul %229, %251  : i64
    %253 = llvm.add %250, %252  : i64
    %254 = llvm.mlir.constant(2 : index) : i64
    %255 = llvm.mul %10, %254  : i64
    %256 = llvm.add %253, %255  : i64
    %257 = llvm.add %256, %239  : i64
    %258 = llvm.getelementptr %248[%257] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %259 = llvm.load %258 : !llvm.ptr<i32>
    %260 = llvm.add %247, %259  : i32
    %261 = llvm.extractvalue %220[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %262 = llvm.mlir.constant(8 : index) : i64
    %263 = llvm.mul %224, %262  : i64
    %264 = llvm.mlir.constant(4 : index) : i64
    %265 = llvm.mul %229, %264  : i64
    %266 = llvm.add %263, %265  : i64
    %267 = llvm.mlir.constant(2 : index) : i64
    %268 = llvm.mul %234, %267  : i64
    %269 = llvm.add %266, %268  : i64
    %270 = llvm.add %269, %239  : i64
    %271 = llvm.getelementptr %261[%270] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %260, %271 : !llvm.ptr<i32>
    %272 = llvm.add %239, %238  : i64
    llvm.br ^bb25(%272 : i64)
  ^bb27:  // pred: ^bb25
    %273 = llvm.add %234, %233  : i64
    llvm.br ^bb23(%273 : i64)
  ^bb28:  // pred: ^bb23
    %274 = llvm.add %229, %228  : i64
    llvm.br ^bb21(%274 : i64)
  ^bb29:  // pred: ^bb21
    %275 = llvm.add %224, %223  : i64
    llvm.br ^bb19(%275 : i64)
  ^bb30:  // pred: ^bb19
    %276 = llvm.mlir.constant(1 : index) : i64
    %277 = llvm.mlir.constant(2 : index) : i64
    %278 = llvm.mlir.constant(2 : index) : i64
    %279 = llvm.mlir.constant(2 : index) : i64
    %280 = llvm.mlir.constant(1 : index) : i64
    %281 = llvm.mlir.constant(4 : index) : i64
    %282 = llvm.mlir.constant(8 : index) : i64
    %283 = llvm.mlir.constant(8 : index) : i64
    %284 = llvm.mlir.null : !llvm.ptr<i32>
    %285 = llvm.getelementptr %284[%283] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %286 = llvm.ptrtoint %285 : !llvm.ptr<i32> to i64
    %287 = llvm.mlir.constant(16 : index) : i64
    %288 = llvm.add %286, %287  : i64
    %289 = llvm.call @malloc(%288) : (i64) -> !llvm.ptr<i8>
    %290 = llvm.bitcast %289 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %291 = llvm.ptrtoint %290 : !llvm.ptr<i32> to i64
    %292 = llvm.mlir.constant(1 : index) : i64
    %293 = llvm.sub %287, %292  : i64
    %294 = llvm.add %291, %293  : i64
    %295 = llvm.urem %294, %287  : i64
    %296 = llvm.sub %294, %295  : i64
    %297 = llvm.inttoptr %296 : i64 to !llvm.ptr<i32>
    %298 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %299 = llvm.insertvalue %290, %298[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %300 = llvm.insertvalue %297, %299[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %301 = llvm.mlir.constant(0 : index) : i64
    %302 = llvm.insertvalue %301, %300[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %303 = llvm.insertvalue %276, %302[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %304 = llvm.insertvalue %277, %303[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %305 = llvm.insertvalue %278, %304[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %306 = llvm.insertvalue %279, %305[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %307 = llvm.insertvalue %282, %306[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %308 = llvm.insertvalue %281, %307[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %309 = llvm.insertvalue %279, %308[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %310 = llvm.insertvalue %280, %309[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %311 = llvm.mlir.constant(0 : index) : i64
    %312 = llvm.mlir.constant(1 : index) : i64
    %313 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb31(%311 : i64)
  ^bb31(%314: i64):  // 2 preds: ^bb30, ^bb41
    %315 = llvm.icmp "slt" %314, %312 : i64
    llvm.cond_br %315, ^bb32, ^bb42
  ^bb32:  // pred: ^bb31
    %316 = llvm.mlir.constant(0 : index) : i64
    %317 = llvm.mlir.constant(2 : index) : i64
    %318 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb33(%316 : i64)
  ^bb33(%319: i64):  // 2 preds: ^bb32, ^bb40
    %320 = llvm.icmp "slt" %319, %317 : i64
    llvm.cond_br %320, ^bb34, ^bb41
  ^bb34:  // pred: ^bb33
    %321 = llvm.mlir.constant(0 : index) : i64
    %322 = llvm.mlir.constant(2 : index) : i64
    %323 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb35(%321 : i64)
  ^bb35(%324: i64):  // 2 preds: ^bb34, ^bb39
    %325 = llvm.icmp "slt" %324, %322 : i64
    llvm.cond_br %325, ^bb36, ^bb40
  ^bb36:  // pred: ^bb35
    %326 = llvm.mlir.constant(0 : index) : i64
    %327 = llvm.mlir.constant(2 : index) : i64
    %328 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb37(%326 : i64)
  ^bb37(%329: i64):  // 2 preds: ^bb36, ^bb38
    %330 = llvm.icmp "slt" %329, %327 : i64
    llvm.cond_br %330, ^bb38, ^bb39
  ^bb38:  // pred: ^bb37
    %331 = llvm.extractvalue %220[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %332 = llvm.mlir.constant(8 : index) : i64
    %333 = llvm.mul %314, %332  : i64
    %334 = llvm.mlir.constant(4 : index) : i64
    %335 = llvm.mul %319, %334  : i64
    %336 = llvm.add %333, %335  : i64
    %337 = llvm.mlir.constant(2 : index) : i64
    %338 = llvm.mul %324, %337  : i64
    %339 = llvm.add %336, %338  : i64
    %340 = llvm.add %339, %329  : i64
    %341 = llvm.getelementptr %331[%340] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %342 = llvm.load %341 : !llvm.ptr<i32>
    %343 = llvm.extractvalue %220[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %344 = llvm.mlir.constant(8 : index) : i64
    %345 = llvm.mul %314, %344  : i64
    %346 = llvm.mlir.constant(4 : index) : i64
    %347 = llvm.mul %319, %346  : i64
    %348 = llvm.add %345, %347  : i64
    %349 = llvm.mlir.constant(2 : index) : i64
    %350 = llvm.mul %324, %349  : i64
    %351 = llvm.add %348, %350  : i64
    %352 = llvm.add %351, %329  : i64
    %353 = llvm.getelementptr %343[%352] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %354 = llvm.load %353 : !llvm.ptr<i32>
    %355 = llvm.icmp "sgt" %342, %354 : i32
    %356 = llvm.select %355, %342, %354 : i1, i32
    %357 = llvm.extractvalue %310[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %358 = llvm.mlir.constant(8 : index) : i64
    %359 = llvm.mul %314, %358  : i64
    %360 = llvm.mlir.constant(4 : index) : i64
    %361 = llvm.mul %319, %360  : i64
    %362 = llvm.add %359, %361  : i64
    %363 = llvm.mlir.constant(2 : index) : i64
    %364 = llvm.mul %324, %363  : i64
    %365 = llvm.add %362, %364  : i64
    %366 = llvm.add %365, %329  : i64
    %367 = llvm.getelementptr %357[%366] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %356, %367 : !llvm.ptr<i32>
    %368 = llvm.add %329, %328  : i64
    llvm.br ^bb37(%368 : i64)
  ^bb39:  // pred: ^bb37
    %369 = llvm.add %324, %323  : i64
    llvm.br ^bb35(%369 : i64)
  ^bb40:  // pred: ^bb35
    %370 = llvm.add %319, %318  : i64
    llvm.br ^bb33(%370 : i64)
  ^bb41:  // pred: ^bb33
    %371 = llvm.add %314, %313  : i64
    llvm.br ^bb31(%371 : i64)
  ^bb42:  // pred: ^bb31
    %372 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>
    %373 = llvm.extractvalue %310[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %374 = llvm.extractvalue %310[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %375 = llvm.insertvalue %373, %372[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %376 = llvm.insertvalue %374, %375[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %377 = llvm.mlir.constant(0 : index) : i64
    %378 = llvm.insertvalue %377, %376[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %379 = llvm.mlir.constant(8 : index) : i64
    %380 = llvm.insertvalue %379, %378[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %381 = llvm.mlir.constant(1 : index) : i64
    %382 = llvm.insertvalue %381, %380[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %383 = llvm.mlir.undef : !llvm.struct<(struct<(ptr<i1>, ptr<i1>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>)>
    %384 = llvm.insertvalue %146, %383[0] : !llvm.struct<(struct<(ptr<i1>, ptr<i1>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>)> 
    %385 = llvm.insertvalue %382, %384[1] : !llvm.struct<(struct<(ptr<i1>, ptr<i1>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>)> 
    llvm.return %385 : !llvm.struct<(struct<(ptr<i1>, ptr<i1>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>)>
  }
  llvm.func @_mlir_ciface_main_graph(%arg0: !llvm.ptr<struct<(struct<(ptr<i1>, ptr<i1>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>)>>, %arg1: !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>>) attributes {input_names = ["v2_0"], llvm.emit_c_interface, output_names = ["v5_0", "v6_0"]} {
    %0 = llvm.load %arg1 : !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>>
    %1 = llvm.extractvalue %0[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %2 = llvm.extractvalue %0[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %3 = llvm.extractvalue %0[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %4 = llvm.extractvalue %0[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %5 = llvm.extractvalue %0[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %6 = llvm.extractvalue %0[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %7 = llvm.extractvalue %0[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %8 = llvm.extractvalue %0[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %9 = llvm.extractvalue %0[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %10 = llvm.call @main_graph(%1, %2, %3, %4, %5, %6, %7, %8, %9) : (!llvm.ptr<i32>, !llvm.ptr<i32>, i64, i64, i64, i64, i64, i64, i64) -> !llvm.struct<(struct<(ptr<i1>, ptr<i1>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>)>
    llvm.store %10, %arg0 : !llvm.ptr<struct<(struct<(ptr<i1>, ptr<i1>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>)>>
    llvm.return
  }
  llvm.func @run_main_graph(%arg0: !llvm.ptr<i8>) -> !llvm.ptr<i8> {
    %0 = llvm.call @omTensorListGetOmtArray(%arg0) : (!llvm.ptr<i8>) -> !llvm.ptr<ptr<i8>>
    %1 = llvm.mlir.constant(1 : i64) : i64
    %2 = llvm.alloca %1 x !llvm.struct<(struct<(ptr<i1>, ptr<i1>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>)> : (i64) -> !llvm.ptr<struct<(struct<(ptr<i1>, ptr<i1>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>)>>
    %3 = llvm.mlir.constant(0 : i64) : i64
    %4 = llvm.getelementptr %0[%3] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    %5 = llvm.load %4 : !llvm.ptr<ptr<i8>>
    %6 = llvm.alloca %1 x !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> : (i64) -> !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>>
    %7 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>
    %8 = llvm.call @omTensorGetDataPtr(%5) : (!llvm.ptr<i8>) -> !llvm.ptr<i8>
    %9 = llvm.bitcast %8 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %10 = llvm.insertvalue %9, %7[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %11 = llvm.insertvalue %9, %10[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %12 = llvm.mlir.constant(0 : i64) : i64
    %13 = llvm.insertvalue %12, %11[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %14 = llvm.call @omTensorGetShape(%5) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %15 = llvm.call @omTensorGetStrides(%5) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %16 = llvm.mlir.constant(0 : i64) : i64
    %17 = llvm.getelementptr %14[%16] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %18 = llvm.load %17 : !llvm.ptr<i64>
    %19 = llvm.insertvalue %18, %13[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %20 = llvm.getelementptr %15[%16] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %21 = llvm.load %20 : !llvm.ptr<i64>
    %22 = llvm.insertvalue %21, %19[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %23 = llvm.mlir.constant(1 : i64) : i64
    %24 = llvm.getelementptr %14[%23] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %25 = llvm.load %24 : !llvm.ptr<i64>
    %26 = llvm.insertvalue %25, %22[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %27 = llvm.getelementptr %15[%23] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %28 = llvm.load %27 : !llvm.ptr<i64>
    %29 = llvm.insertvalue %28, %26[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %30 = llvm.mlir.constant(2 : i64) : i64
    %31 = llvm.getelementptr %14[%30] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %32 = llvm.load %31 : !llvm.ptr<i64>
    %33 = llvm.insertvalue %32, %29[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %34 = llvm.getelementptr %15[%30] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %35 = llvm.load %34 : !llvm.ptr<i64>
    %36 = llvm.insertvalue %35, %33[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    llvm.store %36, %6 : !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>>
    llvm.call @_mlir_ciface_main_graph(%2, %6) : (!llvm.ptr<struct<(struct<(ptr<i1>, ptr<i1>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>)>>, !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>>) -> ()
    %37 = llvm.load %2 : !llvm.ptr<struct<(struct<(ptr<i1>, ptr<i1>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>)>>
    %38 = llvm.extractvalue %37[0] : !llvm.struct<(struct<(ptr<i1>, ptr<i1>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>)> 
    %39 = llvm.extractvalue %37[1] : !llvm.struct<(struct<(ptr<i1>, ptr<i1>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>)> 
    %40 = llvm.mlir.constant(2 : i64) : i64
    %41 = llvm.mlir.constant(16 : i64) : i64
    %42 = llvm.call @malloc(%41) : (i64) -> !llvm.ptr<i8>
    %43 = llvm.bitcast %42 : !llvm.ptr<i8> to !llvm.ptr<ptr<i8>>
    %44 = llvm.mlir.constant(3 : i64) : i64
    %45 = llvm.call @omTensorCreateUntyped(%44) : (i64) -> !llvm.ptr<i8>
    %46 = llvm.mlir.constant(1 : i64) : i64
    %47 = llvm.extractvalue %38[0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<3 x i64>, array<3 x i64>)> 
    %48 = llvm.bitcast %47 : !llvm.ptr<i1> to !llvm.ptr<i8>
    %49 = llvm.extractvalue %38[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<3 x i64>, array<3 x i64>)> 
    %50 = llvm.bitcast %49 : !llvm.ptr<i1> to !llvm.ptr<i8>
    llvm.call @omTensorSetDataPtr(%45, %46, %48, %50) : (!llvm.ptr<i8>, i64, !llvm.ptr<i8>, !llvm.ptr<i8>) -> ()
    %51 = llvm.mlir.constant(9 : i64) : i64
    llvm.call @omTensorSetDataType(%45, %51) : (!llvm.ptr<i8>, i64) -> ()
    %52 = llvm.call @omTensorGetShape(%45) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %53 = llvm.call @omTensorGetStrides(%45) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %54 = llvm.mlir.constant(0 : i64) : i64
    %55 = llvm.extractvalue %38[3, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<3 x i64>, array<3 x i64>)> 
    %56 = llvm.getelementptr %52[%54] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %55, %56 : !llvm.ptr<i64>
    %57 = llvm.extractvalue %38[4, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<3 x i64>, array<3 x i64>)> 
    %58 = llvm.getelementptr %53[%54] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %57, %58 : !llvm.ptr<i64>
    %59 = llvm.mlir.constant(1 : i64) : i64
    %60 = llvm.extractvalue %38[3, 1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<3 x i64>, array<3 x i64>)> 
    %61 = llvm.getelementptr %52[%59] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %60, %61 : !llvm.ptr<i64>
    %62 = llvm.extractvalue %38[4, 1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<3 x i64>, array<3 x i64>)> 
    %63 = llvm.getelementptr %53[%59] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %62, %63 : !llvm.ptr<i64>
    %64 = llvm.mlir.constant(2 : i64) : i64
    %65 = llvm.extractvalue %38[3, 2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<3 x i64>, array<3 x i64>)> 
    %66 = llvm.getelementptr %52[%64] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %65, %66 : !llvm.ptr<i64>
    %67 = llvm.extractvalue %38[4, 2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<3 x i64>, array<3 x i64>)> 
    %68 = llvm.getelementptr %53[%64] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %67, %68 : !llvm.ptr<i64>
    %69 = llvm.mlir.constant(0 : i64) : i64
    %70 = llvm.getelementptr %43[%69] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    llvm.store %45, %70 : !llvm.ptr<ptr<i8>>
    %71 = llvm.mlir.constant(1 : i64) : i64
    %72 = llvm.call @omTensorCreateUntyped(%71) : (i64) -> !llvm.ptr<i8>
    %73 = llvm.mlir.constant(1 : i64) : i64
    %74 = llvm.extractvalue %39[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %75 = llvm.bitcast %74 : !llvm.ptr<i32> to !llvm.ptr<i8>
    %76 = llvm.extractvalue %39[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %77 = llvm.bitcast %76 : !llvm.ptr<i32> to !llvm.ptr<i8>
    llvm.call @omTensorSetDataPtr(%72, %73, %75, %77) : (!llvm.ptr<i8>, i64, !llvm.ptr<i8>, !llvm.ptr<i8>) -> ()
    %78 = llvm.mlir.constant(6 : i64) : i64
    llvm.call @omTensorSetDataType(%72, %78) : (!llvm.ptr<i8>, i64) -> ()
    %79 = llvm.call @omTensorGetShape(%72) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %80 = llvm.call @omTensorGetStrides(%72) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %81 = llvm.mlir.constant(0 : i64) : i64
    %82 = llvm.extractvalue %39[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %83 = llvm.getelementptr %79[%81] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %82, %83 : !llvm.ptr<i64>
    %84 = llvm.extractvalue %39[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %85 = llvm.getelementptr %80[%81] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %84, %85 : !llvm.ptr<i64>
    %86 = llvm.mlir.constant(1 : i64) : i64
    %87 = llvm.getelementptr %43[%86] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    llvm.store %72, %87 : !llvm.ptr<ptr<i8>>
    %88 = llvm.call @omTensorListCreate(%43, %40, %1) : (!llvm.ptr<ptr<i8>>, i64, i64) -> !llvm.ptr<i8>
    llvm.return %88 : !llvm.ptr<i8>
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
    %7 = llvm.mlir.addressof @_entry_point_0_in_sig : !llvm.ptr<array<68 x i8>>
    %8 = llvm.bitcast %7 : !llvm.ptr<array<68 x i8>> to !llvm.ptr<i8>
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
    %7 = llvm.mlir.addressof @_entry_point_0_out_sig : !llvm.ptr<array<124 x i8>>
    %8 = llvm.bitcast %7 : !llvm.ptr<array<124 x i8>> to !llvm.ptr<i8>
    llvm.return %8 : !llvm.ptr<i8>
  ^bb2:  // pred: ^bb0
    %9 = llvm.mlir.null : !llvm.ptr<i8>
    llvm.return %9 : !llvm.ptr<i8>
  }
}

