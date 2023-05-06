module attributes {llvm.data_layout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128", llvm.target_triple = "x86_64-unknown-linux-gnu"} {
  llvm.func @strncmp(!llvm.ptr<i8>, !llvm.ptr<i8>, i64) -> i32
  llvm.mlir.global external constant @_entry_point_0("run_main_graph\00") {addr_space = 0 : i32}
  llvm.mlir.global external constant @_entry_point_0_in_sig("[    { \22type\22 : \22i32\22 , \22dims\22 : [2 , 2 , 1 , 1 , 2] , \22name\22 : \22v4_0\22 }\0A\0A]\00") {addr_space = 0 : i32}
  llvm.mlir.global external constant @_entry_point_0_out_sig("[   { \22type\22 : \22i1\22 , \22dims\22 : [2 , 2 , 2 , 1 , 2] , \22name\22 : \22v2_0\22 }\0A ,    { \22type\22 : \22i32\22 , \22dims\22 : [2 , 2 , 1 , 1] , \22name\22 : \22v0_0\22 }\0A\0A]\00") {addr_space = 0 : i32}
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
  llvm.mlir.global internal constant @constant_1(dense<1> : tensor<i32>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<1 x i32>
  llvm.mlir.global internal constant @constant_0(dense<-1> : tensor<i32>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<1 x i32>
  llvm.func @main_graph(%arg0: !llvm.ptr<i32>, %arg1: !llvm.ptr<i32>, %arg2: i64, %arg3: i64, %arg4: i64, %arg5: i64, %arg6: i64, %arg7: i64, %arg8: i64, %arg9: i64, %arg10: i64, %arg11: i64, %arg12: i64) -> !llvm.struct<(struct<(ptr<i1>, ptr<i1>, i64, array<5 x i64>, array<5 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)> attributes {input_names = ["v4_0"], llvm.emit_c_interface, output_names = ["v2_0", "v0_0"]} {
    %0 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)>
    %1 = llvm.insertvalue %arg0, %0[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %2 = llvm.insertvalue %arg1, %1[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %3 = llvm.insertvalue %arg2, %2[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %4 = llvm.insertvalue %arg3, %3[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %5 = llvm.insertvalue %arg8, %4[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %6 = llvm.insertvalue %arg4, %5[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %7 = llvm.insertvalue %arg9, %6[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %8 = llvm.insertvalue %arg5, %7[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %9 = llvm.insertvalue %arg10, %8[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %10 = llvm.insertvalue %arg6, %9[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %11 = llvm.insertvalue %arg11, %10[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %12 = llvm.insertvalue %arg7, %11[3, 4] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %13 = llvm.insertvalue %arg12, %12[4, 4] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %14 = llvm.mlir.constant(-2147483648 : i32) : i32
    %15 = llvm.mlir.constant(0 : index) : i64
    %16 = llvm.mlir.addressof @constant_0 : !llvm.ptr<array<1 x i32>>
    %17 = llvm.bitcast %16 : !llvm.ptr<array<1 x i32>> to !llvm.ptr<i32>
    %18 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64)>
    %19 = llvm.insertvalue %17, %18[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64)> 
    %20 = llvm.insertvalue %17, %19[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64)> 
    %21 = llvm.mlir.constant(0 : index) : i64
    %22 = llvm.insertvalue %21, %20[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64)> 
    %23 = llvm.mlir.addressof @constant_1 : !llvm.ptr<array<1 x i32>>
    %24 = llvm.bitcast %23 : !llvm.ptr<array<1 x i32>> to !llvm.ptr<i32>
    %25 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64)>
    %26 = llvm.insertvalue %24, %25[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64)> 
    %27 = llvm.insertvalue %24, %26[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64)> 
    %28 = llvm.mlir.constant(0 : index) : i64
    %29 = llvm.insertvalue %28, %27[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64)> 
    %30 = llvm.mlir.constant(2 : index) : i64
    %31 = llvm.mlir.constant(2 : index) : i64
    %32 = llvm.mlir.constant(1 : index) : i64
    %33 = llvm.mlir.constant(1 : index) : i64
    %34 = llvm.mlir.constant(2 : index) : i64
    %35 = llvm.mlir.constant(1 : index) : i64
    %36 = llvm.mlir.constant(2 : index) : i64
    %37 = llvm.mlir.constant(2 : index) : i64
    %38 = llvm.mlir.constant(4 : index) : i64
    %39 = llvm.mlir.constant(8 : index) : i64
    %40 = llvm.mlir.null : !llvm.ptr<i32>
    %41 = llvm.getelementptr %40[%39] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %42 = llvm.ptrtoint %41 : !llvm.ptr<i32> to i64
    %43 = llvm.mlir.constant(16 : index) : i64
    %44 = llvm.add %42, %43  : i64
    %45 = llvm.call @malloc(%44) : (i64) -> !llvm.ptr<i8>
    %46 = llvm.bitcast %45 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %47 = llvm.ptrtoint %46 : !llvm.ptr<i32> to i64
    %48 = llvm.mlir.constant(1 : index) : i64
    %49 = llvm.sub %43, %48  : i64
    %50 = llvm.add %47, %49  : i64
    %51 = llvm.urem %50, %43  : i64
    %52 = llvm.sub %50, %51  : i64
    %53 = llvm.inttoptr %52 : i64 to !llvm.ptr<i32>
    %54 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)>
    %55 = llvm.insertvalue %46, %54[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %56 = llvm.insertvalue %53, %55[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %57 = llvm.mlir.constant(0 : index) : i64
    %58 = llvm.insertvalue %57, %56[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %59 = llvm.insertvalue %30, %58[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %60 = llvm.insertvalue %31, %59[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %61 = llvm.insertvalue %32, %60[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %62 = llvm.insertvalue %33, %61[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %63 = llvm.insertvalue %34, %62[3, 4] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %64 = llvm.insertvalue %38, %63[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %65 = llvm.insertvalue %37, %64[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %66 = llvm.insertvalue %36, %65[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %67 = llvm.insertvalue %34, %66[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %68 = llvm.insertvalue %35, %67[4, 4] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %69 = llvm.mlir.constant(0 : index) : i64
    %70 = llvm.mlir.constant(2 : index) : i64
    %71 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb1(%69 : i64)
  ^bb1(%72: i64):  // 2 preds: ^bb0, ^bb14
    %73 = llvm.icmp "slt" %72, %70 : i64
    llvm.cond_br %73, ^bb2, ^bb15
  ^bb2:  // pred: ^bb1
    %74 = llvm.mlir.constant(0 : index) : i64
    %75 = llvm.mlir.constant(2 : index) : i64
    %76 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb3(%74 : i64)
  ^bb3(%77: i64):  // 2 preds: ^bb2, ^bb13
    %78 = llvm.icmp "slt" %77, %75 : i64
    llvm.cond_br %78, ^bb4, ^bb14
  ^bb4:  // pred: ^bb3
    %79 = llvm.mlir.constant(0 : index) : i64
    %80 = llvm.mlir.constant(1 : index) : i64
    %81 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb5(%79 : i64)
  ^bb5(%82: i64):  // 2 preds: ^bb4, ^bb12
    %83 = llvm.icmp "slt" %82, %80 : i64
    llvm.cond_br %83, ^bb6, ^bb13
  ^bb6:  // pred: ^bb5
    %84 = llvm.mlir.constant(0 : index) : i64
    %85 = llvm.mlir.constant(1 : index) : i64
    %86 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb7(%84 : i64)
  ^bb7(%87: i64):  // 2 preds: ^bb6, ^bb11
    %88 = llvm.icmp "slt" %87, %85 : i64
    llvm.cond_br %88, ^bb8, ^bb12
  ^bb8:  // pred: ^bb7
    %89 = llvm.mlir.constant(0 : index) : i64
    %90 = llvm.mlir.constant(2 : index) : i64
    %91 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb9(%89 : i64)
  ^bb9(%92: i64):  // 2 preds: ^bb8, ^bb10
    %93 = llvm.icmp "slt" %92, %90 : i64
    llvm.cond_br %93, ^bb10, ^bb11
  ^bb10:  // pred: ^bb9
    %94 = llvm.extractvalue %13[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %95 = llvm.mlir.constant(4 : index) : i64
    %96 = llvm.mul %72, %95  : i64
    %97 = llvm.mlir.constant(2 : index) : i64
    %98 = llvm.mul %77, %97  : i64
    %99 = llvm.add %96, %98  : i64
    %100 = llvm.mlir.constant(2 : index) : i64
    %101 = llvm.mul %82, %100  : i64
    %102 = llvm.add %99, %101  : i64
    %103 = llvm.mlir.constant(2 : index) : i64
    %104 = llvm.mul %87, %103  : i64
    %105 = llvm.add %102, %104  : i64
    %106 = llvm.add %105, %92  : i64
    %107 = llvm.getelementptr %94[%106] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %108 = llvm.load %107 : !llvm.ptr<i32>
    %109 = llvm.extractvalue %68[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %110 = llvm.mlir.constant(4 : index) : i64
    %111 = llvm.mul %72, %110  : i64
    %112 = llvm.mlir.constant(2 : index) : i64
    %113 = llvm.mul %77, %112  : i64
    %114 = llvm.add %111, %113  : i64
    %115 = llvm.mlir.constant(2 : index) : i64
    %116 = llvm.mul %82, %115  : i64
    %117 = llvm.add %114, %116  : i64
    %118 = llvm.mlir.constant(2 : index) : i64
    %119 = llvm.mul %87, %118  : i64
    %120 = llvm.add %117, %119  : i64
    %121 = llvm.add %120, %92  : i64
    %122 = llvm.getelementptr %109[%121] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %108, %122 : !llvm.ptr<i32>
    %123 = llvm.add %92, %91  : i64
    llvm.br ^bb9(%123 : i64)
  ^bb11:  // pred: ^bb9
    %124 = llvm.add %87, %86  : i64
    llvm.br ^bb7(%124 : i64)
  ^bb12:  // pred: ^bb7
    %125 = llvm.add %82, %81  : i64
    llvm.br ^bb5(%125 : i64)
  ^bb13:  // pred: ^bb5
    %126 = llvm.add %77, %76  : i64
    llvm.br ^bb3(%126 : i64)
  ^bb14:  // pred: ^bb3
    %127 = llvm.add %72, %71  : i64
    llvm.br ^bb1(%127 : i64)
  ^bb15:  // pred: ^bb1
    %128 = llvm.mlir.constant(2 : index) : i64
    %129 = llvm.mlir.constant(2 : index) : i64
    %130 = llvm.mlir.constant(1 : index) : i64
    %131 = llvm.mlir.constant(1 : index) : i64
    %132 = llvm.mlir.constant(1 : index) : i64
    %133 = llvm.mlir.constant(4 : index) : i64
    %134 = llvm.mlir.null : !llvm.ptr<i32>
    %135 = llvm.getelementptr %134[%133] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %136 = llvm.ptrtoint %135 : !llvm.ptr<i32> to i64
    %137 = llvm.mlir.constant(16 : index) : i64
    %138 = llvm.add %136, %137  : i64
    %139 = llvm.call @malloc(%138) : (i64) -> !llvm.ptr<i8>
    %140 = llvm.bitcast %139 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %141 = llvm.ptrtoint %140 : !llvm.ptr<i32> to i64
    %142 = llvm.mlir.constant(1 : index) : i64
    %143 = llvm.sub %137, %142  : i64
    %144 = llvm.add %141, %143  : i64
    %145 = llvm.urem %144, %137  : i64
    %146 = llvm.sub %144, %145  : i64
    %147 = llvm.inttoptr %146 : i64 to !llvm.ptr<i32>
    %148 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %149 = llvm.insertvalue %140, %148[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %150 = llvm.insertvalue %147, %149[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %151 = llvm.mlir.constant(0 : index) : i64
    %152 = llvm.insertvalue %151, %150[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %153 = llvm.insertvalue %128, %152[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %154 = llvm.insertvalue %129, %153[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %155 = llvm.insertvalue %130, %154[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %156 = llvm.insertvalue %131, %155[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %157 = llvm.insertvalue %129, %156[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %158 = llvm.insertvalue %130, %157[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %159 = llvm.insertvalue %131, %158[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %160 = llvm.insertvalue %132, %159[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %161 = llvm.mlir.constant(0 : index) : i64
    %162 = llvm.mlir.constant(2 : index) : i64
    %163 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb16(%161 : i64)
  ^bb16(%164: i64):  // 2 preds: ^bb15, ^bb26
    %165 = llvm.icmp "slt" %164, %162 : i64
    llvm.cond_br %165, ^bb17, ^bb27
  ^bb17:  // pred: ^bb16
    %166 = llvm.mlir.constant(0 : index) : i64
    %167 = llvm.mlir.constant(2 : index) : i64
    %168 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb18(%166 : i64)
  ^bb18(%169: i64):  // 2 preds: ^bb17, ^bb25
    %170 = llvm.icmp "slt" %169, %167 : i64
    llvm.cond_br %170, ^bb19, ^bb26
  ^bb19:  // pred: ^bb18
    %171 = llvm.mlir.constant(0 : index) : i64
    %172 = llvm.mlir.constant(1 : index) : i64
    %173 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb20(%171 : i64)
  ^bb20(%174: i64):  // 2 preds: ^bb19, ^bb24
    %175 = llvm.icmp "slt" %174, %172 : i64
    llvm.cond_br %175, ^bb21, ^bb25
  ^bb21:  // pred: ^bb20
    %176 = llvm.mlir.constant(0 : index) : i64
    %177 = llvm.mlir.constant(1 : index) : i64
    %178 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb22(%176 : i64)
  ^bb22(%179: i64):  // 2 preds: ^bb21, ^bb23
    %180 = llvm.icmp "slt" %179, %177 : i64
    llvm.cond_br %180, ^bb23, ^bb24
  ^bb23:  // pred: ^bb22
    %181 = llvm.extractvalue %160[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %182 = llvm.mlir.constant(2 : index) : i64
    %183 = llvm.mul %164, %182  : i64
    %184 = llvm.add %183, %169  : i64
    %185 = llvm.add %184, %174  : i64
    %186 = llvm.add %185, %179  : i64
    %187 = llvm.getelementptr %181[%186] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %14, %187 : !llvm.ptr<i32>
    %188 = llvm.add %179, %178  : i64
    llvm.br ^bb22(%188 : i64)
  ^bb24:  // pred: ^bb22
    %189 = llvm.add %174, %173  : i64
    llvm.br ^bb20(%189 : i64)
  ^bb25:  // pred: ^bb20
    %190 = llvm.add %169, %168  : i64
    llvm.br ^bb18(%190 : i64)
  ^bb26:  // pred: ^bb18
    %191 = llvm.add %164, %163  : i64
    llvm.br ^bb16(%191 : i64)
  ^bb27:  // pred: ^bb16
    %192 = llvm.mlir.constant(0 : index) : i64
    %193 = llvm.mlir.constant(2 : index) : i64
    %194 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb28(%192 : i64)
  ^bb28(%195: i64):  // 2 preds: ^bb27, ^bb41
    %196 = llvm.icmp "slt" %195, %193 : i64
    llvm.cond_br %196, ^bb29, ^bb42
  ^bb29:  // pred: ^bb28
    %197 = llvm.mlir.constant(0 : index) : i64
    %198 = llvm.mlir.constant(2 : index) : i64
    %199 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb30(%197 : i64)
  ^bb30(%200: i64):  // 2 preds: ^bb29, ^bb40
    %201 = llvm.icmp "slt" %200, %198 : i64
    llvm.cond_br %201, ^bb31, ^bb41
  ^bb31:  // pred: ^bb30
    %202 = llvm.mlir.constant(0 : index) : i64
    %203 = llvm.mlir.constant(1 : index) : i64
    %204 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb32(%202 : i64)
  ^bb32(%205: i64):  // 2 preds: ^bb31, ^bb39
    %206 = llvm.icmp "slt" %205, %203 : i64
    llvm.cond_br %206, ^bb33, ^bb40
  ^bb33:  // pred: ^bb32
    %207 = llvm.mlir.constant(0 : index) : i64
    %208 = llvm.mlir.constant(1 : index) : i64
    %209 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb34(%207 : i64)
  ^bb34(%210: i64):  // 2 preds: ^bb33, ^bb38
    %211 = llvm.icmp "slt" %210, %208 : i64
    llvm.cond_br %211, ^bb35, ^bb39
  ^bb35:  // pred: ^bb34
    %212 = llvm.mlir.constant(0 : index) : i64
    %213 = llvm.mlir.constant(2 : index) : i64
    %214 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb36(%212 : i64)
  ^bb36(%215: i64):  // 2 preds: ^bb35, ^bb37
    %216 = llvm.icmp "slt" %215, %213 : i64
    llvm.cond_br %216, ^bb37, ^bb38
  ^bb37:  // pred: ^bb36
    %217 = llvm.extractvalue %68[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %218 = llvm.mlir.constant(4 : index) : i64
    %219 = llvm.mul %195, %218  : i64
    %220 = llvm.mlir.constant(2 : index) : i64
    %221 = llvm.mul %200, %220  : i64
    %222 = llvm.add %219, %221  : i64
    %223 = llvm.mlir.constant(2 : index) : i64
    %224 = llvm.mul %205, %223  : i64
    %225 = llvm.add %222, %224  : i64
    %226 = llvm.mlir.constant(2 : index) : i64
    %227 = llvm.mul %210, %226  : i64
    %228 = llvm.add %225, %227  : i64
    %229 = llvm.add %228, %215  : i64
    %230 = llvm.getelementptr %217[%229] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %231 = llvm.load %230 : !llvm.ptr<i32>
    %232 = llvm.extractvalue %160[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %233 = llvm.mlir.constant(2 : index) : i64
    %234 = llvm.mul %195, %233  : i64
    %235 = llvm.add %234, %200  : i64
    %236 = llvm.add %235, %205  : i64
    %237 = llvm.add %236, %210  : i64
    %238 = llvm.getelementptr %232[%237] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %239 = llvm.load %238 : !llvm.ptr<i32>
    %240 = llvm.icmp "sgt" %239, %231 : i32
    %241 = llvm.select %240, %239, %231 : i1, i32
    %242 = llvm.extractvalue %160[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %243 = llvm.mlir.constant(2 : index) : i64
    %244 = llvm.mul %195, %243  : i64
    %245 = llvm.add %244, %200  : i64
    %246 = llvm.add %245, %205  : i64
    %247 = llvm.add %246, %210  : i64
    %248 = llvm.getelementptr %242[%247] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %241, %248 : !llvm.ptr<i32>
    %249 = llvm.add %215, %214  : i64
    llvm.br ^bb36(%249 : i64)
  ^bb38:  // pred: ^bb36
    %250 = llvm.add %210, %209  : i64
    llvm.br ^bb34(%250 : i64)
  ^bb39:  // pred: ^bb34
    %251 = llvm.add %205, %204  : i64
    llvm.br ^bb32(%251 : i64)
  ^bb40:  // pred: ^bb32
    %252 = llvm.add %200, %199  : i64
    llvm.br ^bb30(%252 : i64)
  ^bb41:  // pred: ^bb30
    %253 = llvm.add %195, %194  : i64
    llvm.br ^bb28(%253 : i64)
  ^bb42:  // pred: ^bb28
    %254 = llvm.mlir.constant(2 : index) : i64
    %255 = llvm.mlir.constant(2 : index) : i64
    %256 = llvm.mlir.constant(1 : index) : i64
    %257 = llvm.mlir.constant(1 : index) : i64
    %258 = llvm.mlir.constant(1 : index) : i64
    %259 = llvm.mlir.constant(4 : index) : i64
    %260 = llvm.mlir.null : !llvm.ptr<i32>
    %261 = llvm.getelementptr %260[%259] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %262 = llvm.ptrtoint %261 : !llvm.ptr<i32> to i64
    %263 = llvm.mlir.constant(16 : index) : i64
    %264 = llvm.add %262, %263  : i64
    %265 = llvm.call @malloc(%264) : (i64) -> !llvm.ptr<i8>
    %266 = llvm.bitcast %265 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %267 = llvm.ptrtoint %266 : !llvm.ptr<i32> to i64
    %268 = llvm.mlir.constant(1 : index) : i64
    %269 = llvm.sub %263, %268  : i64
    %270 = llvm.add %267, %269  : i64
    %271 = llvm.urem %270, %263  : i64
    %272 = llvm.sub %270, %271  : i64
    %273 = llvm.inttoptr %272 : i64 to !llvm.ptr<i32>
    %274 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %275 = llvm.insertvalue %266, %274[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %276 = llvm.insertvalue %273, %275[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %277 = llvm.mlir.constant(0 : index) : i64
    %278 = llvm.insertvalue %277, %276[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %279 = llvm.insertvalue %254, %278[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %280 = llvm.insertvalue %255, %279[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %281 = llvm.insertvalue %256, %280[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %282 = llvm.insertvalue %257, %281[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %283 = llvm.insertvalue %255, %282[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %284 = llvm.insertvalue %256, %283[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %285 = llvm.insertvalue %257, %284[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %286 = llvm.insertvalue %258, %285[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %287 = llvm.mlir.constant(0 : index) : i64
    %288 = llvm.mlir.constant(2 : index) : i64
    %289 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb43(%287 : i64)
  ^bb43(%290: i64):  // 2 preds: ^bb42, ^bb53
    %291 = llvm.icmp "slt" %290, %288 : i64
    llvm.cond_br %291, ^bb44, ^bb54
  ^bb44:  // pred: ^bb43
    %292 = llvm.mlir.constant(0 : index) : i64
    %293 = llvm.mlir.constant(2 : index) : i64
    %294 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb45(%292 : i64)
  ^bb45(%295: i64):  // 2 preds: ^bb44, ^bb52
    %296 = llvm.icmp "slt" %295, %293 : i64
    llvm.cond_br %296, ^bb46, ^bb53
  ^bb46:  // pred: ^bb45
    %297 = llvm.mlir.constant(0 : index) : i64
    %298 = llvm.mlir.constant(1 : index) : i64
    %299 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb47(%297 : i64)
  ^bb47(%300: i64):  // 2 preds: ^bb46, ^bb51
    %301 = llvm.icmp "slt" %300, %298 : i64
    llvm.cond_br %301, ^bb48, ^bb52
  ^bb48:  // pred: ^bb47
    %302 = llvm.mlir.constant(0 : index) : i64
    %303 = llvm.mlir.constant(1 : index) : i64
    %304 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb49(%302 : i64)
  ^bb49(%305: i64):  // 2 preds: ^bb48, ^bb50
    %306 = llvm.icmp "slt" %305, %303 : i64
    llvm.cond_br %306, ^bb50, ^bb51
  ^bb50:  // pred: ^bb49
    %307 = llvm.extractvalue %160[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %308 = llvm.mlir.constant(2 : index) : i64
    %309 = llvm.mul %290, %308  : i64
    %310 = llvm.add %309, %295  : i64
    %311 = llvm.add %310, %300  : i64
    %312 = llvm.add %311, %305  : i64
    %313 = llvm.getelementptr %307[%312] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %314 = llvm.load %313 : !llvm.ptr<i32>
    %315 = llvm.extractvalue %160[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %316 = llvm.mlir.constant(2 : index) : i64
    %317 = llvm.mul %290, %316  : i64
    %318 = llvm.add %317, %295  : i64
    %319 = llvm.add %318, %300  : i64
    %320 = llvm.add %319, %305  : i64
    %321 = llvm.getelementptr %315[%320] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %322 = llvm.load %321 : !llvm.ptr<i32>
    %323 = llvm.icmp "sgt" %314, %322 : i32
    %324 = llvm.select %323, %314, %322 : i1, i32
    %325 = llvm.extractvalue %286[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %326 = llvm.mlir.constant(2 : index) : i64
    %327 = llvm.mul %290, %326  : i64
    %328 = llvm.add %327, %295  : i64
    %329 = llvm.add %328, %300  : i64
    %330 = llvm.add %329, %305  : i64
    %331 = llvm.getelementptr %325[%330] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %324, %331 : !llvm.ptr<i32>
    %332 = llvm.add %305, %304  : i64
    llvm.br ^bb49(%332 : i64)
  ^bb51:  // pred: ^bb49
    %333 = llvm.add %300, %299  : i64
    llvm.br ^bb47(%333 : i64)
  ^bb52:  // pred: ^bb47
    %334 = llvm.add %295, %294  : i64
    llvm.br ^bb45(%334 : i64)
  ^bb53:  // pred: ^bb45
    %335 = llvm.add %290, %289  : i64
    llvm.br ^bb43(%335 : i64)
  ^bb54:  // pred: ^bb43
    %336 = llvm.mlir.constant(2 : index) : i64
    %337 = llvm.mlir.constant(2 : index) : i64
    %338 = llvm.mlir.constant(2 : index) : i64
    %339 = llvm.mlir.constant(1 : index) : i64
    %340 = llvm.mlir.constant(2 : index) : i64
    %341 = llvm.mlir.constant(1 : index) : i64
    %342 = llvm.mlir.constant(2 : index) : i64
    %343 = llvm.mlir.constant(4 : index) : i64
    %344 = llvm.mlir.constant(8 : index) : i64
    %345 = llvm.mlir.constant(16 : index) : i64
    %346 = llvm.mlir.null : !llvm.ptr<i1>
    %347 = llvm.getelementptr %346[%345] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    %348 = llvm.ptrtoint %347 : !llvm.ptr<i1> to i64
    %349 = llvm.mlir.constant(16 : index) : i64
    %350 = llvm.add %348, %349  : i64
    %351 = llvm.call @malloc(%350) : (i64) -> !llvm.ptr<i8>
    %352 = llvm.bitcast %351 : !llvm.ptr<i8> to !llvm.ptr<i1>
    %353 = llvm.ptrtoint %352 : !llvm.ptr<i1> to i64
    %354 = llvm.mlir.constant(1 : index) : i64
    %355 = llvm.sub %349, %354  : i64
    %356 = llvm.add %353, %355  : i64
    %357 = llvm.urem %356, %349  : i64
    %358 = llvm.sub %356, %357  : i64
    %359 = llvm.inttoptr %358 : i64 to !llvm.ptr<i1>
    %360 = llvm.mlir.undef : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<5 x i64>, array<5 x i64>)>
    %361 = llvm.insertvalue %352, %360[0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<5 x i64>, array<5 x i64>)> 
    %362 = llvm.insertvalue %359, %361[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<5 x i64>, array<5 x i64>)> 
    %363 = llvm.mlir.constant(0 : index) : i64
    %364 = llvm.insertvalue %363, %362[2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<5 x i64>, array<5 x i64>)> 
    %365 = llvm.insertvalue %336, %364[3, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<5 x i64>, array<5 x i64>)> 
    %366 = llvm.insertvalue %337, %365[3, 1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<5 x i64>, array<5 x i64>)> 
    %367 = llvm.insertvalue %338, %366[3, 2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<5 x i64>, array<5 x i64>)> 
    %368 = llvm.insertvalue %339, %367[3, 3] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<5 x i64>, array<5 x i64>)> 
    %369 = llvm.insertvalue %340, %368[3, 4] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<5 x i64>, array<5 x i64>)> 
    %370 = llvm.insertvalue %344, %369[4, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<5 x i64>, array<5 x i64>)> 
    %371 = llvm.insertvalue %343, %370[4, 1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<5 x i64>, array<5 x i64>)> 
    %372 = llvm.insertvalue %342, %371[4, 2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<5 x i64>, array<5 x i64>)> 
    %373 = llvm.insertvalue %340, %372[4, 3] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<5 x i64>, array<5 x i64>)> 
    %374 = llvm.insertvalue %341, %373[4, 4] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<5 x i64>, array<5 x i64>)> 
    %375 = llvm.mlir.constant(0 : index) : i64
    %376 = llvm.mlir.constant(2 : index) : i64
    %377 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb55(%375 : i64)
  ^bb55(%378: i64):  // 2 preds: ^bb54, ^bb68
    %379 = llvm.icmp "slt" %378, %376 : i64
    llvm.cond_br %379, ^bb56, ^bb69
  ^bb56:  // pred: ^bb55
    %380 = llvm.mlir.constant(0 : index) : i64
    %381 = llvm.mlir.constant(2 : index) : i64
    %382 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb57(%380 : i64)
  ^bb57(%383: i64):  // 2 preds: ^bb56, ^bb67
    %384 = llvm.icmp "slt" %383, %381 : i64
    llvm.cond_br %384, ^bb58, ^bb68
  ^bb58:  // pred: ^bb57
    %385 = llvm.mlir.constant(0 : index) : i64
    %386 = llvm.mlir.constant(2 : index) : i64
    %387 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb59(%385 : i64)
  ^bb59(%388: i64):  // 2 preds: ^bb58, ^bb66
    %389 = llvm.icmp "slt" %388, %386 : i64
    llvm.cond_br %389, ^bb60, ^bb67
  ^bb60:  // pred: ^bb59
    %390 = llvm.mlir.constant(0 : index) : i64
    %391 = llvm.mlir.constant(1 : index) : i64
    %392 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb61(%390 : i64)
  ^bb61(%393: i64):  // 2 preds: ^bb60, ^bb65
    %394 = llvm.icmp "slt" %393, %391 : i64
    llvm.cond_br %394, ^bb62, ^bb66
  ^bb62:  // pred: ^bb61
    %395 = llvm.mlir.constant(0 : index) : i64
    %396 = llvm.mlir.constant(2 : index) : i64
    %397 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb63(%395 : i64)
  ^bb63(%398: i64):  // 2 preds: ^bb62, ^bb64
    %399 = llvm.icmp "slt" %398, %396 : i64
    llvm.cond_br %399, ^bb64, ^bb65
  ^bb64:  // pred: ^bb63
    %400 = llvm.extractvalue %13[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %401 = llvm.mlir.constant(4 : index) : i64
    %402 = llvm.mul %378, %401  : i64
    %403 = llvm.mlir.constant(2 : index) : i64
    %404 = llvm.mul %383, %403  : i64
    %405 = llvm.add %402, %404  : i64
    %406 = llvm.mlir.constant(2 : index) : i64
    %407 = llvm.mul %15, %406  : i64
    %408 = llvm.add %405, %407  : i64
    %409 = llvm.mlir.constant(2 : index) : i64
    %410 = llvm.mul %393, %409  : i64
    %411 = llvm.add %408, %410  : i64
    %412 = llvm.add %411, %398  : i64
    %413 = llvm.getelementptr %400[%412] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %414 = llvm.load %413 : !llvm.ptr<i32>
    %415 = llvm.extractvalue %286[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %416 = llvm.mlir.constant(2 : index) : i64
    %417 = llvm.mul %383, %416  : i64
    %418 = llvm.add %417, %388  : i64
    %419 = llvm.add %418, %393  : i64
    %420 = llvm.add %419, %15  : i64
    %421 = llvm.getelementptr %415[%420] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %422 = llvm.load %421 : !llvm.ptr<i32>
    %423 = llvm.icmp "eq" %414, %422 : i32
    %424 = llvm.extractvalue %374[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<5 x i64>, array<5 x i64>)> 
    %425 = llvm.mlir.constant(8 : index) : i64
    %426 = llvm.mul %378, %425  : i64
    %427 = llvm.mlir.constant(4 : index) : i64
    %428 = llvm.mul %383, %427  : i64
    %429 = llvm.add %426, %428  : i64
    %430 = llvm.mlir.constant(2 : index) : i64
    %431 = llvm.mul %388, %430  : i64
    %432 = llvm.add %429, %431  : i64
    %433 = llvm.mlir.constant(2 : index) : i64
    %434 = llvm.mul %393, %433  : i64
    %435 = llvm.add %432, %434  : i64
    %436 = llvm.add %435, %398  : i64
    %437 = llvm.getelementptr %424[%436] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    llvm.store %423, %437 : !llvm.ptr<i1>
    %438 = llvm.add %398, %397  : i64
    llvm.br ^bb63(%438 : i64)
  ^bb65:  // pred: ^bb63
    %439 = llvm.add %393, %392  : i64
    llvm.br ^bb61(%439 : i64)
  ^bb66:  // pred: ^bb61
    %440 = llvm.add %388, %387  : i64
    llvm.br ^bb59(%440 : i64)
  ^bb67:  // pred: ^bb59
    %441 = llvm.add %383, %382  : i64
    llvm.br ^bb57(%441 : i64)
  ^bb68:  // pred: ^bb57
    %442 = llvm.add %378, %377  : i64
    llvm.br ^bb55(%442 : i64)
  ^bb69:  // pred: ^bb55
    %443 = llvm.mlir.constant(2 : index) : i64
    %444 = llvm.mlir.constant(2 : index) : i64
    %445 = llvm.mlir.constant(1 : index) : i64
    %446 = llvm.mlir.constant(1 : index) : i64
    %447 = llvm.mlir.constant(1 : index) : i64
    %448 = llvm.mlir.constant(4 : index) : i64
    %449 = llvm.mlir.null : !llvm.ptr<i32>
    %450 = llvm.getelementptr %449[%448] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %451 = llvm.ptrtoint %450 : !llvm.ptr<i32> to i64
    %452 = llvm.mlir.constant(16 : index) : i64
    %453 = llvm.add %451, %452  : i64
    %454 = llvm.call @malloc(%453) : (i64) -> !llvm.ptr<i8>
    %455 = llvm.bitcast %454 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %456 = llvm.ptrtoint %455 : !llvm.ptr<i32> to i64
    %457 = llvm.mlir.constant(1 : index) : i64
    %458 = llvm.sub %452, %457  : i64
    %459 = llvm.add %456, %458  : i64
    %460 = llvm.urem %459, %452  : i64
    %461 = llvm.sub %459, %460  : i64
    %462 = llvm.inttoptr %461 : i64 to !llvm.ptr<i32>
    %463 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %464 = llvm.insertvalue %455, %463[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %465 = llvm.insertvalue %462, %464[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %466 = llvm.mlir.constant(0 : index) : i64
    %467 = llvm.insertvalue %466, %465[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %468 = llvm.insertvalue %443, %467[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %469 = llvm.insertvalue %444, %468[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %470 = llvm.insertvalue %445, %469[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %471 = llvm.insertvalue %446, %470[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %472 = llvm.insertvalue %444, %471[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %473 = llvm.insertvalue %445, %472[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %474 = llvm.insertvalue %446, %473[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %475 = llvm.insertvalue %447, %474[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %476 = llvm.mlir.constant(0 : index) : i64
    %477 = llvm.mlir.constant(2 : index) : i64
    %478 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb70(%476 : i64)
  ^bb70(%479: i64):  // 2 preds: ^bb69, ^bb80
    %480 = llvm.icmp "slt" %479, %477 : i64
    llvm.cond_br %480, ^bb71, ^bb81
  ^bb71:  // pred: ^bb70
    %481 = llvm.mlir.constant(0 : index) : i64
    %482 = llvm.mlir.constant(2 : index) : i64
    %483 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb72(%481 : i64)
  ^bb72(%484: i64):  // 2 preds: ^bb71, ^bb79
    %485 = llvm.icmp "slt" %484, %482 : i64
    llvm.cond_br %485, ^bb73, ^bb80
  ^bb73:  // pred: ^bb72
    %486 = llvm.mlir.constant(0 : index) : i64
    %487 = llvm.mlir.constant(1 : index) : i64
    %488 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb74(%486 : i64)
  ^bb74(%489: i64):  // 2 preds: ^bb73, ^bb78
    %490 = llvm.icmp "slt" %489, %487 : i64
    llvm.cond_br %490, ^bb75, ^bb79
  ^bb75:  // pred: ^bb74
    %491 = llvm.mlir.constant(0 : index) : i64
    %492 = llvm.mlir.constant(1 : index) : i64
    %493 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb76(%491 : i64)
  ^bb76(%494: i64):  // 2 preds: ^bb75, ^bb77
    %495 = llvm.icmp "slt" %494, %492 : i64
    llvm.cond_br %495, ^bb77, ^bb78
  ^bb77:  // pred: ^bb76
    %496 = llvm.extractvalue %286[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %497 = llvm.mlir.constant(2 : index) : i64
    %498 = llvm.mul %479, %497  : i64
    %499 = llvm.add %498, %484  : i64
    %500 = llvm.add %499, %489  : i64
    %501 = llvm.add %500, %494  : i64
    %502 = llvm.getelementptr %496[%501] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %503 = llvm.load %502 : !llvm.ptr<i32>
    %504 = llvm.extractvalue %22[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64)> 
    %505 = llvm.load %504 : !llvm.ptr<i32>
    %506 = llvm.icmp "slt" %503, %505 : i32
    %507 = llvm.select %506, %505, %503 : i1, i32
    %508 = llvm.extractvalue %29[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64)> 
    %509 = llvm.load %508 : !llvm.ptr<i32>
    %510 = llvm.icmp "slt" %507, %509 : i32
    %511 = llvm.select %510, %507, %509 : i1, i32
    %512 = llvm.extractvalue %475[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %513 = llvm.mlir.constant(2 : index) : i64
    %514 = llvm.mul %479, %513  : i64
    %515 = llvm.add %514, %484  : i64
    %516 = llvm.add %515, %489  : i64
    %517 = llvm.add %516, %494  : i64
    %518 = llvm.getelementptr %512[%517] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %511, %518 : !llvm.ptr<i32>
    %519 = llvm.add %494, %493  : i64
    llvm.br ^bb76(%519 : i64)
  ^bb78:  // pred: ^bb76
    %520 = llvm.add %489, %488  : i64
    llvm.br ^bb74(%520 : i64)
  ^bb79:  // pred: ^bb74
    %521 = llvm.add %484, %483  : i64
    llvm.br ^bb72(%521 : i64)
  ^bb80:  // pred: ^bb72
    %522 = llvm.add %479, %478  : i64
    llvm.br ^bb70(%522 : i64)
  ^bb81:  // pred: ^bb70
    %523 = llvm.mlir.undef : !llvm.struct<(struct<(ptr<i1>, ptr<i1>, i64, array<5 x i64>, array<5 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>
    %524 = llvm.insertvalue %374, %523[0] : !llvm.struct<(struct<(ptr<i1>, ptr<i1>, i64, array<5 x i64>, array<5 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)> 
    %525 = llvm.insertvalue %475, %524[1] : !llvm.struct<(struct<(ptr<i1>, ptr<i1>, i64, array<5 x i64>, array<5 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)> 
    llvm.return %525 : !llvm.struct<(struct<(ptr<i1>, ptr<i1>, i64, array<5 x i64>, array<5 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>
  }
  llvm.func @_mlir_ciface_main_graph(%arg0: !llvm.ptr<struct<(struct<(ptr<i1>, ptr<i1>, i64, array<5 x i64>, array<5 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>>, %arg1: !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)>>) attributes {input_names = ["v4_0"], llvm.emit_c_interface, output_names = ["v2_0", "v0_0"]} {
    %0 = llvm.load %arg1 : !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)>>
    %1 = llvm.extractvalue %0[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %2 = llvm.extractvalue %0[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %3 = llvm.extractvalue %0[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %4 = llvm.extractvalue %0[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %5 = llvm.extractvalue %0[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %6 = llvm.extractvalue %0[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %7 = llvm.extractvalue %0[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %8 = llvm.extractvalue %0[3, 4] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %9 = llvm.extractvalue %0[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %10 = llvm.extractvalue %0[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %11 = llvm.extractvalue %0[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %12 = llvm.extractvalue %0[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %13 = llvm.extractvalue %0[4, 4] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %14 = llvm.call @main_graph(%1, %2, %3, %4, %5, %6, %7, %8, %9, %10, %11, %12, %13) : (!llvm.ptr<i32>, !llvm.ptr<i32>, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64) -> !llvm.struct<(struct<(ptr<i1>, ptr<i1>, i64, array<5 x i64>, array<5 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>
    llvm.store %14, %arg0 : !llvm.ptr<struct<(struct<(ptr<i1>, ptr<i1>, i64, array<5 x i64>, array<5 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>>
    llvm.return
  }
  llvm.func @run_main_graph(%arg0: !llvm.ptr<i8>) -> !llvm.ptr<i8> {
    %0 = llvm.call @omTensorListGetOmtArray(%arg0) : (!llvm.ptr<i8>) -> !llvm.ptr<ptr<i8>>
    %1 = llvm.mlir.constant(1 : i64) : i64
    %2 = llvm.alloca %1 x !llvm.struct<(struct<(ptr<i1>, ptr<i1>, i64, array<5 x i64>, array<5 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)> : (i64) -> !llvm.ptr<struct<(struct<(ptr<i1>, ptr<i1>, i64, array<5 x i64>, array<5 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>>
    %3 = llvm.mlir.constant(0 : i64) : i64
    %4 = llvm.getelementptr %0[%3] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    %5 = llvm.load %4 : !llvm.ptr<ptr<i8>>
    %6 = llvm.alloca %1 x !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> : (i64) -> !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)>>
    %7 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)>
    %8 = llvm.call @omTensorGetDataPtr(%5) : (!llvm.ptr<i8>) -> !llvm.ptr<i8>
    %9 = llvm.bitcast %8 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %10 = llvm.insertvalue %9, %7[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %11 = llvm.insertvalue %9, %10[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %12 = llvm.mlir.constant(0 : i64) : i64
    %13 = llvm.insertvalue %12, %11[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %14 = llvm.call @omTensorGetShape(%5) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %15 = llvm.call @omTensorGetStrides(%5) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %16 = llvm.mlir.constant(0 : i64) : i64
    %17 = llvm.getelementptr %14[%16] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %18 = llvm.load %17 : !llvm.ptr<i64>
    %19 = llvm.insertvalue %18, %13[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %20 = llvm.getelementptr %15[%16] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %21 = llvm.load %20 : !llvm.ptr<i64>
    %22 = llvm.insertvalue %21, %19[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %23 = llvm.mlir.constant(1 : i64) : i64
    %24 = llvm.getelementptr %14[%23] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %25 = llvm.load %24 : !llvm.ptr<i64>
    %26 = llvm.insertvalue %25, %22[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %27 = llvm.getelementptr %15[%23] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %28 = llvm.load %27 : !llvm.ptr<i64>
    %29 = llvm.insertvalue %28, %26[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %30 = llvm.mlir.constant(2 : i64) : i64
    %31 = llvm.getelementptr %14[%30] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %32 = llvm.load %31 : !llvm.ptr<i64>
    %33 = llvm.insertvalue %32, %29[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %34 = llvm.getelementptr %15[%30] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %35 = llvm.load %34 : !llvm.ptr<i64>
    %36 = llvm.insertvalue %35, %33[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %37 = llvm.mlir.constant(3 : i64) : i64
    %38 = llvm.getelementptr %14[%37] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %39 = llvm.load %38 : !llvm.ptr<i64>
    %40 = llvm.insertvalue %39, %36[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %41 = llvm.getelementptr %15[%37] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %42 = llvm.load %41 : !llvm.ptr<i64>
    %43 = llvm.insertvalue %42, %40[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %44 = llvm.mlir.constant(4 : i64) : i64
    %45 = llvm.getelementptr %14[%44] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %46 = llvm.load %45 : !llvm.ptr<i64>
    %47 = llvm.insertvalue %46, %43[3, 4] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    %48 = llvm.getelementptr %15[%44] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %49 = llvm.load %48 : !llvm.ptr<i64>
    %50 = llvm.insertvalue %49, %47[4, 4] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)> 
    llvm.store %50, %6 : !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)>>
    llvm.call @_mlir_ciface_main_graph(%2, %6) : (!llvm.ptr<struct<(struct<(ptr<i1>, ptr<i1>, i64, array<5 x i64>, array<5 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>>, !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<5 x i64>, array<5 x i64>)>>) -> ()
    %51 = llvm.load %2 : !llvm.ptr<struct<(struct<(ptr<i1>, ptr<i1>, i64, array<5 x i64>, array<5 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>>
    %52 = llvm.extractvalue %51[0] : !llvm.struct<(struct<(ptr<i1>, ptr<i1>, i64, array<5 x i64>, array<5 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)> 
    %53 = llvm.extractvalue %51[1] : !llvm.struct<(struct<(ptr<i1>, ptr<i1>, i64, array<5 x i64>, array<5 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)> 
    %54 = llvm.mlir.constant(2 : i64) : i64
    %55 = llvm.mlir.constant(16 : i64) : i64
    %56 = llvm.call @malloc(%55) : (i64) -> !llvm.ptr<i8>
    %57 = llvm.bitcast %56 : !llvm.ptr<i8> to !llvm.ptr<ptr<i8>>
    %58 = llvm.mlir.constant(5 : i64) : i64
    %59 = llvm.call @omTensorCreateUntyped(%58) : (i64) -> !llvm.ptr<i8>
    %60 = llvm.mlir.constant(1 : i64) : i64
    %61 = llvm.extractvalue %52[0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<5 x i64>, array<5 x i64>)> 
    %62 = llvm.bitcast %61 : !llvm.ptr<i1> to !llvm.ptr<i8>
    %63 = llvm.extractvalue %52[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<5 x i64>, array<5 x i64>)> 
    %64 = llvm.bitcast %63 : !llvm.ptr<i1> to !llvm.ptr<i8>
    llvm.call @omTensorSetDataPtr(%59, %60, %62, %64) : (!llvm.ptr<i8>, i64, !llvm.ptr<i8>, !llvm.ptr<i8>) -> ()
    %65 = llvm.mlir.constant(9 : i64) : i64
    llvm.call @omTensorSetDataType(%59, %65) : (!llvm.ptr<i8>, i64) -> ()
    %66 = llvm.call @omTensorGetShape(%59) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %67 = llvm.call @omTensorGetStrides(%59) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %68 = llvm.mlir.constant(0 : i64) : i64
    %69 = llvm.extractvalue %52[3, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<5 x i64>, array<5 x i64>)> 
    %70 = llvm.getelementptr %66[%68] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %69, %70 : !llvm.ptr<i64>
    %71 = llvm.extractvalue %52[4, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<5 x i64>, array<5 x i64>)> 
    %72 = llvm.getelementptr %67[%68] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %71, %72 : !llvm.ptr<i64>
    %73 = llvm.mlir.constant(1 : i64) : i64
    %74 = llvm.extractvalue %52[3, 1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<5 x i64>, array<5 x i64>)> 
    %75 = llvm.getelementptr %66[%73] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %74, %75 : !llvm.ptr<i64>
    %76 = llvm.extractvalue %52[4, 1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<5 x i64>, array<5 x i64>)> 
    %77 = llvm.getelementptr %67[%73] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %76, %77 : !llvm.ptr<i64>
    %78 = llvm.mlir.constant(2 : i64) : i64
    %79 = llvm.extractvalue %52[3, 2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<5 x i64>, array<5 x i64>)> 
    %80 = llvm.getelementptr %66[%78] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %79, %80 : !llvm.ptr<i64>
    %81 = llvm.extractvalue %52[4, 2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<5 x i64>, array<5 x i64>)> 
    %82 = llvm.getelementptr %67[%78] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %81, %82 : !llvm.ptr<i64>
    %83 = llvm.mlir.constant(3 : i64) : i64
    %84 = llvm.extractvalue %52[3, 3] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<5 x i64>, array<5 x i64>)> 
    %85 = llvm.getelementptr %66[%83] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %84, %85 : !llvm.ptr<i64>
    %86 = llvm.extractvalue %52[4, 3] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<5 x i64>, array<5 x i64>)> 
    %87 = llvm.getelementptr %67[%83] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %86, %87 : !llvm.ptr<i64>
    %88 = llvm.mlir.constant(4 : i64) : i64
    %89 = llvm.extractvalue %52[3, 4] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<5 x i64>, array<5 x i64>)> 
    %90 = llvm.getelementptr %66[%88] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %89, %90 : !llvm.ptr<i64>
    %91 = llvm.extractvalue %52[4, 4] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<5 x i64>, array<5 x i64>)> 
    %92 = llvm.getelementptr %67[%88] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %91, %92 : !llvm.ptr<i64>
    %93 = llvm.mlir.constant(0 : i64) : i64
    %94 = llvm.getelementptr %57[%93] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    llvm.store %59, %94 : !llvm.ptr<ptr<i8>>
    %95 = llvm.mlir.constant(4 : i64) : i64
    %96 = llvm.call @omTensorCreateUntyped(%95) : (i64) -> !llvm.ptr<i8>
    %97 = llvm.mlir.constant(1 : i64) : i64
    %98 = llvm.extractvalue %53[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %99 = llvm.bitcast %98 : !llvm.ptr<i32> to !llvm.ptr<i8>
    %100 = llvm.extractvalue %53[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %101 = llvm.bitcast %100 : !llvm.ptr<i32> to !llvm.ptr<i8>
    llvm.call @omTensorSetDataPtr(%96, %97, %99, %101) : (!llvm.ptr<i8>, i64, !llvm.ptr<i8>, !llvm.ptr<i8>) -> ()
    %102 = llvm.mlir.constant(6 : i64) : i64
    llvm.call @omTensorSetDataType(%96, %102) : (!llvm.ptr<i8>, i64) -> ()
    %103 = llvm.call @omTensorGetShape(%96) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %104 = llvm.call @omTensorGetStrides(%96) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %105 = llvm.mlir.constant(0 : i64) : i64
    %106 = llvm.extractvalue %53[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %107 = llvm.getelementptr %103[%105] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %106, %107 : !llvm.ptr<i64>
    %108 = llvm.extractvalue %53[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %109 = llvm.getelementptr %104[%105] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %108, %109 : !llvm.ptr<i64>
    %110 = llvm.mlir.constant(1 : i64) : i64
    %111 = llvm.extractvalue %53[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %112 = llvm.getelementptr %103[%110] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %111, %112 : !llvm.ptr<i64>
    %113 = llvm.extractvalue %53[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %114 = llvm.getelementptr %104[%110] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %113, %114 : !llvm.ptr<i64>
    %115 = llvm.mlir.constant(2 : i64) : i64
    %116 = llvm.extractvalue %53[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %117 = llvm.getelementptr %103[%115] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %116, %117 : !llvm.ptr<i64>
    %118 = llvm.extractvalue %53[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %119 = llvm.getelementptr %104[%115] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %118, %119 : !llvm.ptr<i64>
    %120 = llvm.mlir.constant(3 : i64) : i64
    %121 = llvm.extractvalue %53[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %122 = llvm.getelementptr %103[%120] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %121, %122 : !llvm.ptr<i64>
    %123 = llvm.extractvalue %53[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %124 = llvm.getelementptr %104[%120] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %123, %124 : !llvm.ptr<i64>
    %125 = llvm.mlir.constant(1 : i64) : i64
    %126 = llvm.getelementptr %57[%125] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    llvm.store %96, %126 : !llvm.ptr<ptr<i8>>
    %127 = llvm.call @omTensorListCreate(%57, %54, %1) : (!llvm.ptr<ptr<i8>>, i64, i64) -> !llvm.ptr<i8>
    llvm.return %127 : !llvm.ptr<i8>
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
    %7 = llvm.mlir.addressof @_entry_point_0_in_sig : !llvm.ptr<array<76 x i8>>
    %8 = llvm.bitcast %7 : !llvm.ptr<array<76 x i8>> to !llvm.ptr<i8>
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
    %7 = llvm.mlir.addressof @_entry_point_0_out_sig : !llvm.ptr<array<144 x i8>>
    %8 = llvm.bitcast %7 : !llvm.ptr<array<144 x i8>> to !llvm.ptr<i8>
    llvm.return %8 : !llvm.ptr<i8>
  ^bb2:  // pred: ^bb0
    %9 = llvm.mlir.null : !llvm.ptr<i8>
    llvm.return %9 : !llvm.ptr<i8>
  }
}

